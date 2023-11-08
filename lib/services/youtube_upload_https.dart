import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:googleapis/youtube/v3.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' as parser;
import 'package:youtube_translation/services/root_https.dart';
import 'package:youtube_translation/services/user_https.dart';
import 'package:youtube_translation/utils/global_extension.dart';
import 'package:youtube_translation/utils/key_storage.dart';

typedef UploadProgressCallback = Function(double percentage);

class YoutubeUploadHttps extends RootHttps {
  YoutubeUploadHttps(this.oAuthToken, super.googleSignInAccount);

  final String oAuthToken;
  static const chunkSize = 262144; // 256KB, 청크 크기는 변경 가능합니다.
// 클라이언트 ID와 시크릿을 사용하여 인증 데이터 생성
  var scopes = [YouTubeApi.youtubeForceSslScope, YouTubeApi.youtubeUploadScope];

  Future<String?> uploadVideo(Stream<List<int>> videoStream, int getFileSize,
      List<String> tags, Map<String, Map<String, String>> localizations,
      {required UploadProgressCallback uploadProgressCallback}) async {
    var defaultLanguageCode = 'en';
    // 1. 영상 초기화 및 메타데이터 설정
    const initUploadUrl =
        'https://www.googleapis.com/upload/youtube/v3/videos?uploadType=resumable&part=snippet,status';
    final initResponse = await http.post(
      Uri.parse(initUploadUrl),
      headers: {
        'Authorization': 'Bearer $oAuthToken',
        'Content-Type': 'application/json',
        'X-Upload-Content-Length': '$getFileSize',
        'X-Upload-Content-Type': 'video/*',
      },
      body: jsonEncode({
        'snippet': {
          'title': localizations[defaultLanguageCode]!['title'],
          'description': localizations[defaultLanguageCode]!['description'],
          'tags': tags,
          'defaultLanguage': defaultLanguageCode,
        },
        'status': {
          'selfDeclaredMadeForKids': false,
          'privacyStatus': 'unlisted',
        },
      }),
    );
    final uploadUrl = initResponse.headers['location']!;

    // 2. 청크 단위로 영상 업로드
    int chunkSize = 1024 * 1024; // 예: 1MB
    List<int> buffer = [];
    int uploadedBytes = 0; // 현재까지 업로드된 바이트 수
    await for (List<int> data in videoStream) {
      buffer.addAll(data);
      while (buffer.length >= chunkSize) {
        final chunk = buffer.sublist(0, chunkSize);
        await http.put(
          Uri.parse(uploadUrl),
          headers: {
            'Authorization': 'Bearer $oAuthToken',
            'Content-Type': 'video/*',
            'Content-Length': '${getFileSize - uploadedBytes}',
            // 청크의 크기와 전체 크기를 설정합니다.
            'Content-Range':
                'bytes $uploadedBytes-${uploadedBytes + chunk.length - 1}/$getFileSize',
          },
          body: chunk,
        );

        uploadedBytes += chunk.length;
        buffer = buffer.sublist(chunkSize); // 버퍼에서 청크를 제거
        uploadProgressCallback(uploadedBytes / getFileSize);
      }
    }

    // 마지막 청크 처리 (버퍼에 남아 있는 데이터)
    if (buffer.isNotEmpty) {
      var finalResponse = await http.put(
        Uri.parse(uploadUrl),
        headers: {
          'Authorization': 'Bearer $oAuthToken',
          'Content-Type': 'video/*',
          'Content-Length': '${buffer.length}',
          'Content-Range':
              'bytes $uploadedBytes-${uploadedBytes + buffer.length - 1}/$getFileSize',
        },
        body: buffer,
      );
      uploadProgressCallback(1);
      try {
        var responseJson = jsonDecode(finalResponse.body);
        final videoId = responseJson['id'];
        return videoId;
      } catch (e) {
        throw Exception('Failed to parse response JSON. Error: $e');
      }
    }
    return null;
  }

  /*
  final localizations = {
      'en': {
        'title': 'English Title',
        'description': 'English Description',
      },
      'ko': {
        'title': '한국어 제목',
        'description': '한국어 설명',
      },
      // 여기에 추가적인 언어를 추가할 수 있습니다.
    };
   */

  Future setVideoLocalizations(
    String videoId,
    Map<String, Map<String, String>> localizations,
  ) async {
    await post('set_video_localizations', {
      'oAuthToken': oAuthToken,
      'videoId': videoId,
      'localizations': localizations,
    });
  }

  Future<void> setThumbnail(String videoId, Uint8List thumbnail,
      {bool retry = true}) async {
    // 'multipart/form-data' 요청 생성
    var request = http.MultipartRequest('POST', uri('upload_thumbnail'))
      ..fields['videoId'] = videoId // 필요한 필드가 있으면 추가
      ..fields['oAuthToken'] = oAuthToken // 필요한 필드가 있으면 추가
      ..headers['Authorization'] = 'Bearer ${await KeyStorage.accessToken}'
      ..files.add(
        http.MultipartFile.fromBytes(
          'thumbnail', // 이 이름은 서버에서 기대하는 필드 이름과 일치해야 합니다.
          thumbnail,
          filename: 'thumbnail.jpg', // 서버에서 필요로 하는 경우 파일명 지정
          contentType: parser.MediaType('image', 'jpeg'), // 적절한 MIME 타입
        ),
      );

    try {
      final response = await request.send();

      // 응답 처리
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        print('Thumbnail uploaded successfully');
      } else {
        if (retry &&
            response.statusCode == 401 &&
            await KeyStorage.hasRefreshToken) {
          var getAccessToken = await UserHttps(googleSignIn).post(
              'get_access_token',
              {
                'accessToken':
                    await googleAccessToken,
              },
              tryToken: false,
              tokenType: TokenType.refresh);
          if (getAccessToken.isOk) {
            var accessToken = jsonDecode(getAccessToken.body)['accessToken'];
            await KeyStorage.setToken(accessToken: accessToken);
            return await setThumbnail(videoId, thumbnail, retry: false);
          }
        }
      }
    } catch (e) {
      print('Error occurred while uploading: $e');
    }
  }

  Future<String?> uploadCaption(
      String videoId, String language, String srt) async {
    var result = await put('upload_caption', {
      'oAuthToken': oAuthToken,
      'videoId': videoId,
      'language': language,
      'srt': srt
    });
    return null;
  }

  Future postComment(String videoId, String text) async {
    await put('post_comment',
        {'oAuthToken': oAuthToken, 'videoId': videoId, 'text': text});
  }

  Future<String> translateText(String text, String targetLanguage) async{
    var result = await post('translate_text',
        {'text': text, 'targetLanguage': targetLanguage});
    return result.body;
  }

  @override
  // TODO: implement path
  String get path => 'youtube';
}

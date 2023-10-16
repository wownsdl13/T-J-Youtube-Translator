import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

typedef UploadProgressCallback = Function(double percentage);
class YoutubeUploadHttps{
  YoutubeUploadHttps(this.oAuthToken);
  final String oAuthToken;
  static const apiKey = 'AIzaSyA1ki2kqdDAzrQwpn2GTZ-NiM6rYkxpPWc';
  static const chunkSize = 262144;  // 256KB, 청크 크기는 변경 가능합니다.



  Future<String> uploadVideo(Stream<List<int>> videoStream, int getFileSize, List<String> tags, {required UploadProgressCallback uploadProgressCallback}) async {
    // 1. 영상 초기화 및 메타데이터 설정
    const initUploadUrl = 'https://www.googleapis.com/upload/youtube/v3/videos?uploadType=resumable&part=snippet,status';
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
          'title': '',
          'description': '',
          'tags': tags,
        },
        'status': {
          'privacyStatus': 'private',
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
            'Content-Range': 'bytes $uploadedBytes-${uploadedBytes + chunk.length-1}/$getFileSize',
          },
          body: chunk,
        );

        uploadedBytes += chunk.length;
        buffer = buffer.sublist(chunkSize); // 버퍼에서 청크를 제거
        uploadProgressCallback(uploadedBytes/getFileSize);
      }
    }

    // 마지막 청크 처리 (버퍼에 남아 있는 데이터)
    if (buffer.isNotEmpty) {
      await http.put(
        Uri.parse(uploadUrl),
        headers: {
          'Authorization': 'Bearer $oAuthToken',
          'Content-Type': 'video/*',
          'Content-Length': '${buffer.length}',
          'Content-Range': 'bytes $uploadedBytes-${uploadedBytes + buffer.length-1}/$getFileSize',
        },
        body: buffer,
      );
      uploadProgressCallback(1);
    }

    final videoId = jsonDecode(initResponse.body)['id'];
    return videoId;
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
  Future<void> setVideoLocalizations(String videoId, Map<String, Map<String, String>> localizations) async {
    const metadataUrl = 'https://www.googleapis.com/youtube/v3/videos?part=localizations&key=$apiKey';
    await http.put(
      Uri.parse(metadataUrl),
      headers: {
        'Authorization': 'Bearer $oAuthToken',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'id': videoId,
        'localizations': localizations,
      }),
    );
  }


  Future<void> setThumbnail(String videoId, Uint8List thumbnail) async {
    final url = 'https://www.googleapis.com/upload/youtube/v3/thumbnails/set?videoId=$videoId&key=$apiKey';

    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $oAuthToken',
        'Content-Type': 'image/jpeg',
      },
      body: thumbnail,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to set thumbnail');
    }
  }

  Future<void> addCaption(String videoId, String srt, String language) async {
    const url = 'https://www.googleapis.com/upload/youtube/v3/captions?part=snippet';

    // 1. 캡션 리소스 생성
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $oAuthToken',
        'Content-Type': 'application/json',
        'X-Upload-Content-Type': 'application/octet-stream',
        'X-Upload-Content-Length': '${srt.length}',
      },
      body: jsonEncode({
        'snippet': {
          'videoId': videoId,
          'language': language,
          'name': 'Default',
        },
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to initiate caption upload');
    }

    // 2. 자막 파일 업로드
    final uploadUrl = response.headers['location']!;
    final uploadResponse = await http.post(
      Uri.parse(uploadUrl),
      headers: {
        'Authorization': 'Bearer $oAuthToken',
        'Content-Type': 'application/octet-stream',
      },
      body: srt,
    );

    if (uploadResponse.statusCode != 200) {
      throw Exception('Failed to upload caption file');
    }
  }
}
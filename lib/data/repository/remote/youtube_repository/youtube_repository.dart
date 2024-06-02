import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:http_parser/http_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:token_dio/token_dio.dart';
import 'package:youtube_translation/data/client/remote/youtube_client/dto/post_comment_dto/post_comment_dto.dart';
import 'package:youtube_translation/data/client/remote/youtube_client/dto/set_youtube_localizations_dto/set_youtube_localizations_dto.dart';
import 'package:youtube_translation/data/client/remote/youtube_client/dto/upload_caption_dto/upload_caption_dto.dart';
import 'package:youtube_translation/data/client/remote/youtube_client/dto/upload_thumbnail_dto/upload_thumbnail_dto.dart';
import 'package:youtube_translation/data/client/remote/youtube_client/youtube_client.dart';
import 'package:youtube_translation/data/repository/remote/youtube_repository/youtube_repository_state/youtube_repository_state.dart';
import 'package:http/http.dart' as http;

part 'youtube_repository.g.dart';

typedef UploadProgressCallback = Function(double percentage);

@Riverpod()
class YoutubeRepository extends _$YoutubeRepository {
  @override
  YoutubeRepositoryState build() {
    return YoutubeRepositoryState(youtubeClient: _youtubeClient);
  }

  YoutubeClient get _youtubeClient => YoutubeClient(TokenDio.accessDio);

  Future setVideoLocalizations(
      {required String oAuthToken,
      required String videoId,
      required Map<String, Map<String, String>> localizations}) async {
    await _youtubeClient.setVideoLocalizations(SetYoutubeLocalizationsDto(
        oAuthToken: oAuthToken,
        videoId: videoId,
        localizations: localizations));
  }

  Future uploadCaption(
      {required String oAuthToken,
      required String videoId,
      required String language,
      required String srt}) async {
    await _youtubeClient.uploadCaption(UploadCaptionDto(
        oAuthToken: oAuthToken,
        videoId: videoId,
        language: language,
        srt: srt));
  }

  Future postComment(
      {required String oAuthToken,
      required String videoId,
      required String text}) async {
    await _youtubeClient.postComment(
        PostCommentDto(oAuthToken: oAuthToken, videoId: videoId, text: text));
  }

  Future uploadThumbnail(
      {required String oAuthToken,
      required String videoId,
      required Uint8List thumbnail,
      bool retry = true}) async {
    final thumbnailFile = MultipartFile.fromBytes(
      thumbnail,
      filename: 'thumbnail.jpg',
      contentType: MediaType('image', 'jpeg'), // dio의 MediaType 사용
    );

    final formData = FormData.fromMap({
      'videoId': videoId,
      'oAuthToken': oAuthToken,
      'thumbnail': thumbnailFile,
    });

    await _youtubeClient.uploadThumbnail(formData);
  }

  Future<String?> uploadVideo(
      {required String oAuthToken,
      required Stream<List<int>> videoStream,
      required int getFileSize,
      required List<String> tags,
      required Map<String, Map<String, String>> localizations,
      required UploadProgressCallback uploadProgressCallback}) async {
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

  Uri uri(String path) {
    return Uri.http('${TokenDio.baseURL}youtube/$path');
  }
}

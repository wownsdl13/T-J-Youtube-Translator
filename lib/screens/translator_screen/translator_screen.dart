import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/comment_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/description_blog_post_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/description_translate_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/description_header_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/title_header_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/tag_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/upload_btn.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/title_translate_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/translate_subtitle_widget/translate_subtitle_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/uploading_widget.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/enum/video_input_type.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';
import 'package:youtube_translation/screens/translator_screen/video_id_widget.dart';
import 'package:youtube_translation/utils/languages.dart';
import 'package:youtube_translation/widgets/pop_up_dialog/pop_up_dialog.dart';

import 'local_widgets/upload_file_widget/upload_file_widget.dart';

class TranslatorScreen extends ConsumerStatefulWidget {
  const TranslatorScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends ConsumerState<TranslatorScreen> {
  var lockKey = GlobalKey();
  var langKey = GlobalKey();
  var downloadSubKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var ss = ref.watch(screenProvider);
    var t = ref.watch(translatorProvider);
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Alien Youtube uploader v.1.1.0',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 4),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(width: 20),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              PopUpDialog(PopUpWidgetType.changeLang)
                                  .showDialog(context, targetKey: langKey);
                            },
                            child: Container(
                              key: langKey,
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: Text(
                                'To ${Languages.langName(ss.languageCode)}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              PopUpDialog(PopUpWidgetType.keyInput)
                                  .showDialog(context, targetKey: lockKey);
                            },
                            child: Padding(
                              key: lockKey,
                              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                              child: const Icon(Icons.key,
                                  color: Colors.white, size: 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          children: [
                            TitleTranslateWidget(),
                            SizedBox(height: 50),
                            DescriptionTranslateWidget(),
                            SizedBox(height: 50),
                            Expanded(child: TranslateSubtitleWidget()),
                          ],
                        ),
                        const SizedBox(width: 50),
                        Flexible(
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView(
                                  children: [
                                    _videoFile,
                                    _videoTypeSelect,
                                    const SizedBox(height: 30),
                                    UploadFileWidget(
                                        name: 'Thumbnail',
                                        emptyText: 'Drag Thumbnail here',
                                        size:
                                            const Size(250, 250 * (720 / 1280)),
                                        hasValue:
                                            t.translatorDataState.hasThumbnail,
                                        dragDropCallback:
                                            (DropzoneViewController controller,
                                                dynamic htmlFile) async {
                                          var t = ref.read(
                                              translatorProvider.notifier);
                                          t.setThumbnail(
                                              await controller
                                                  .getFileMIME(htmlFile),
                                              await controller
                                                  .getFileData(htmlFile));
                                        },
                                        child:
                                            t.translatorDataState.hasThumbnail
                                                ? Image.memory(
                                                    t.translatorDataState
                                                        .thumbnail!,
                                                    fit: BoxFit.cover)
                                                : Container()),
                                    const SizedBox(height: 30),
                                    const TitleHeaderWidget(),
                                    const SizedBox(height: 30),
                                    const DescriptionHeaderWidget(),
                                    const SizedBox(height: 30),
                                    const CommentWidget(),
                                    const SizedBox(height: 30),
                                    const DescriptionBlogPostWidget(),
                                    const SizedBox(height: 30),
                                    const TagWidget(),
                                  ],
                                ),
                              ),
                              const UploadBtn(),
                            ],
                          ),
                        ),
                        const SizedBox(width: 50),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const UploadingWidget(),
        ],
      ),
    );
  }

  Widget get _videoTypeSelect {
    var ts = ref.watch(translatorProvider);
    return Container(
      margin: const EdgeInsets.only(left: 100, top: 5),
      width: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              var t = ref.read(translatorProvider.notifier);
              t.setVideoInputType = VideoInputType.file;
            },
            child: Opacity(
              opacity: ts.videoInputType == VideoInputType.file ? 1 : .4,
              child: Container(
                width: 130,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                child: const Center(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'File',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.file_copy_rounded,
                      color: Colors.white,
                      size: 14,
                    ),
                  ],
                )),
              ),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              var t = ref.read(translatorProvider.notifier);
              t.setVideoInputType = VideoInputType.videoId;
            },
            child: Opacity(
              opacity: ts.videoInputType == VideoInputType.videoId ? 1 : .4,
              child: Container(
                width: 130,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                child: const Center(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'VideoId',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.video_call_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _videoFile {
    var ts = ref.watch(translatorProvider);
    switch (ts.videoInputType) {
      case VideoInputType.file:
        return UploadFileWidget(
            name: 'Video',
            emptyText: 'Drag Video here',
            size: const Size(250, 50),
            hasValue: ts.hasVideo,
            dragDropCallback:
                (DropzoneViewController controller, dynamic htmlFile) async {
              var t = ref.read(translatorProvider.notifier);
              t.setVideo(
                  size: await controller.getFileSize(htmlFile),
                  mime: await controller.getFileMIME(htmlFile),
                  name: await controller.getFilename(htmlFile),
                  videoStream: controller.getFileStream(htmlFile));
            },
            child: ts.hasVideo
                ? Center(
                    child: Text(
                    ts.videoName,
                    style:
                        TextStyle(color: Colors.green.shade300, fontSize: 16),
                  ))
                : Container());
      case VideoInputType.videoId:
        return const VideoIdWidget();
    }
  }
}

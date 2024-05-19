class TranslatesModel {
  TranslatesModel(this.languageCode);

  final String languageCode;

  String get instagram => _translate[languageCode]![_instagram]!;

  String get blogStory => _translate[languageCode]![_blogStory]!;
}

String get _blogStory => 'blog_story';

String get _instagram => 'instagram';

const _translate = {
  "ko": {"blog_story": "이 이야기 글", "instagram": "인스타그램"},
  "en": {"blog_story": "This Story Post", "instagram": "Instagram"},
  "ja": {"blog_story": "このストーリーポスト", "instagram": "インスタグラム"},
  "fr": {"blog_story": "Ce Post d'Histoire", "instagram": "Instagram"},
  "zh": {"blog_story": "这个故事帖子", "instagram": "Instagram"},
  "es": {
    "blog_story": "Esta Publicación de Historia",
    "instagram": "Instagram"
  },
  "vi": {"blog_story": "Bài đăng câu chuyện này", "instagram": "Instagram"},
  "ar": {"blog_story": "منشور هذه القصة", "instagram": "انستغرام"},
  "nl": {"blog_story": "Dit Verhaalbericht", "instagram": "Instagram"},
  "de": {"blog_story": "Dieser Geschichtenpost", "instagram": "Instagram"},
  "ms": {"blog_story": "Catatan cerita ini", "instagram": "Instagram"},
  "ru": {"blog_story": "Этот пост истории", "instagram": "Инстаграм"},
  "uk": {"blog_story": "Цей пост історії", "instagram": "Інстаграм"}
};

class Translates {
  Translates(this.languageCode);

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
  "uk": {"blog_story": "Цей пост історії", "instagram": "Інстаграм"},
  "it": {"blog_story": "Questo Post della Storia", "instagram": "Instagram"},
  "pt": {"blog_story": "Esta Postagem da História", "instagram": "Instagram"},
  "tr": {"blog_story": "Bu Hikaye Gönderisi", "instagram": "Instagram"},
  "hu": {"blog_story": "Ez a Történet Bejegyzés", "instagram": "Instagram"},
  "el": {"blog_story": "Αυτή η Ανάρτηση Ιστορίας", "instagram": "Instagram"},
  "sv": {"blog_story": "Detta Berättelseinlägg", "instagram": "Instagram"},
  "no": {"blog_story": "Dette Historieinnlegget", "instagram": "Instagram"},
  "fi": {"blog_story": "Tämä Tarinapostaus", "instagram": "Instagram"},
  "be": {"blog_story": "Гэта Гісторыя", "instagram": "Instagram"},
  "ro": {"blog_story": "Această Postare de Poveste", "instagram": "Instagram"},
  "bg": {"blog_story": "Тази История", "instagram": "Instagram"},
  "sr": {"blog_story": "Ova Priča", "instagram": "Instagram"},
  "uz": {"blog_story": "Ushbu Hikoya", "instagram": "Instagram"},
  "kk": {"blog_story": "Бұл Әңгіме", "instagram": "Instagram"},
  "sq": {"blog_story": "Kjo Postim i Historisë", "instagram": "Instagram"},
  "cs": {"blog_story": "Tento Příběh", "instagram": "Instagram"},
  "pl": {"blog_story": "Ten Post z Historii", "instagram": "Instagram"},
  "hr": {"blog_story": "Ova Priča", "instagram": "Instagram"},
  "sk": {"blog_story": "Tento Príbeh", "instagram": "Instagram"},
  "lt": {"blog_story": "Šis Istorijos", "instagram": "Instagram"},
  "lv": {"blog_story": "Šis Stāsts", "instagram": "Instagram"},
  "et": {"blog_story": "See Lugu", "instagram": "Instagram"},
  "sl": {"blog_story": "Ta Zgodba", "instagram": "Instagram"},
  "az": {"blog_story": "Bu Hekayə", "instagram": "Instagram"},
  "ka": {"blog_story": "ეს ისტორია", "instagram": "Instagram"},
  "id": {"blog_story": "Postingan Cerita Ini", "instagram": "Instagram"},
  "th": {"blog_story": "โพสต์เรื่องนี้", "instagram": "Instagram"},
  "hi": {"blog_story": "यह कहानी पोस्ट", "instagram": "Instagram"}
};

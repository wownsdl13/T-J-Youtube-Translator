import 'package:shared_preferences/shared_preferences.dart';

class KeyStorage {
  static const _chatGptKey = 'chatGptKey';
  static const _youtubeApiKey = 'youtubeApiKey';
  static Future<bool> get hasChatGptKey async {
    var s = await SharedPreferences.getInstance();
    return s.getString(_chatGptKey) != null;
  }

  static Future<String?> get getChatGptKey async {
    var s = await SharedPreferences.getInstance();
    return s.getString(_chatGptKey);
  }

  static Future setChatGptKey(String key) async {
    var s = await SharedPreferences.getInstance();
    await s.setString(_chatGptKey, key);
  }

  static Future<bool> get hasYoutubeApiKey async {
    var s = await SharedPreferences.getInstance();
    return s.getString(_youtubeApiKey) != null;
  }

  static Future<String?> get getYoutubeApiKey async {
    var s = await SharedPreferences.getInstance();
    return s.getString(_youtubeApiKey);
  }

  static Future setYoutubeApiKey(String key) async {
    var s = await SharedPreferences.getInstance();
    await s.setString(_youtubeApiKey, key);
  }
}

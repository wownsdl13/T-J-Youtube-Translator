import 'package:shared_preferences/shared_preferences.dart';

class KeyStorage {
  static const chatGptKey = 'chatGptKey';
  static const youtubeApiKey = 'youtubeApiKey';
  static const titleHeader = 'titleHeader';
  static const descriptionHeader = 'descriptionHeader';
  static const tag = 'tag';


  static Future<bool> hasKey(String name) async {
    var s = await SharedPreferences.getInstance();
    return s.getString(name) != null;
  }

  static Future<String?> getKey(String name) async {
    var s = await SharedPreferences.getInstance();
    return s.getString(name);
  }

  static Future setKey(String name, String key) async {
    var s = await SharedPreferences.getInstance();
    await s.setString(name, key);
  }
}

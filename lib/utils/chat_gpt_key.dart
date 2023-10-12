import 'package:shared_preferences/shared_preferences.dart';

class ChatGPTUtil {
  static const _key = 'key';
  static Future<bool> get hasKey async {
    var s = await SharedPreferences.getInstance();
    return s.getString(_key) == null;
  }

  static Future<String?> get getKey async {
    var s = await SharedPreferences.getInstance();
    return s.getString(_key);
  }

  static Future setKey(String key) async {
    var s = await SharedPreferences.getInstance();
    await s.setString(_key, key);
  }
}

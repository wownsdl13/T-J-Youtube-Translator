import 'package:shared_preferences/shared_preferences.dart';

class KeyStorage {

  //for key https
  static const String _sessionKey = 'session';
  static const String _refreshSessionKey = 'refresh_token';


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






  static Future setToken(
      {String? accessToken, String? refreshToken}) async {
    var prefs = await SharedPreferences.getInstance();
    if (accessToken != null) {
      await prefs.setString(_sessionKey, accessToken);
    }
    if (refreshToken != null) {
      await prefs.setString(_refreshSessionKey, refreshToken);
    }
  }

  static Future<String?> get accessToken async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(_sessionKey);
  }

  static Future<String?> get refreshToken async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(_refreshSessionKey);
  }

  //
  static Future<bool> get hasRefreshToken async => (await refreshToken) != null;
  static Future<bool> get hasAccessToken async  => (await accessToken) != null;
}

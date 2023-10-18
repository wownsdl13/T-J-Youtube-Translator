import 'dart:convert';
import 'dart:io';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_translation/services/user_https.dart';
import 'package:youtube_translation/utils/key_storage.dart';
import 'package:youtube_translation/utils/global_extension.dart';

enum TokenType { access, refresh, none }

typedef SendFunction = Future<http.Response> Function();

abstract class RootHttps {
  final GoogleSignInAccount googleSignInAccount;
  static String _baseURL = 'localhost:3003';

  static set setBaseURL(String baseURL) => _baseURL = baseURL;
  
  Uri uri(String url) => _path(url);

  RootHttps(this.googleSignInAccount) {
    _init(this);
  }

  String get path;

  RootHttps _init(RootHttps connect) {
    return connect;
  }

  Future<http.Response> get<T>(String url,
      {TokenType tokenType = TokenType.access,
        Map<String, String>? headers,
        Map<String, dynamic>? query,
        bool tryToken = true}) async {
    headers = _setHeader(headers);
    if (tryToken) {
      return await _answer(() async {
        await _setToken(tokenType, headers);
        return http.get(_path(url, query: query), headers: headers);
      });
    } else {
      await _setToken(tokenType, headers);
      return await http.get(_path(url, query: query), headers: headers);
    }
  }

  Future<http.Response> post<T>(String url, dynamic body,
      {TokenType tokenType = TokenType.access,
        Map<String, String>? headers,
        Map<String, dynamic>? query,
        bool tryToken = true}) async {
    headers = _setHeader(headers);
    if (tryToken) {
      return await _answer(() async {
        await _setToken(tokenType, headers);
        return await http.post(_path(url, query: query),
            headers: headers, body: jsonEncode(body));
      });
    } else {
      await _setToken(tokenType, headers);
      return await http.post(_path(url, query: query),
          headers: headers, body: jsonEncode(body));
    }
  }

  Future<http.Response> put<T>(String url, dynamic body,
      {TokenType tokenType = TokenType.access,
        Map<String, String>? headers,
        Map<String, dynamic>? query,
        bool tryToken = true}) async {
    headers = _setHeader(headers);
    if (tryToken) {
      return await _answer(() async {
        await _setToken(tokenType, headers);
        return await http.put(_path(url, query: query),
            headers: headers, body: jsonEncode(body));
      });
    } else {
      await _setToken(tokenType, headers);
      return await http.put(_path(url, query: query),
          headers: headers, body: jsonEncode(body));
    }
  }

  Future<http.Response> patch<T>(
      String url,
      dynamic body, {
        TokenType tokenType = TokenType.access,
        bool tryToken = true,
        Map<String, String>? headers,
        Map<String, dynamic>? query,
      }) async {
    headers = _setHeader(headers);
    if (tryToken) {
      return await _answer(() async {
        await _setToken(tokenType, headers);
        return await http.patch(_path(url, query: query),
            headers: headers, body: jsonEncode(body));
      });
    } else {
      await _setToken(tokenType, headers);
      return await http.patch(_path(url, query: query),
          headers: headers, body: jsonEncode(body));
    }
  }

  Future<http.Response> delete<T>(
      String url,
      dynamic body, {
        TokenType tokenType = TokenType.access,
        bool tryToken = true,
        Map<String, String>? headers,
        Map<String, dynamic>? query,
      }) async {
    headers = _setHeader(headers);
    if (tryToken) {
      return await _answer(() async {
        await _setToken(tokenType, headers);
        return await http.delete(_path(url, query: query),
            headers: headers, body: jsonEncode(body));
      });
    } else {
      await _setToken(tokenType, headers);
      return await http.delete(_path(url, query: query),
          headers: headers, body: jsonEncode(body));
    }
  }

  Future _answer(SendFunction send, {bool tryToken = true}) async {
    var result = await send();
    if (result.unauthorized) {
      // unAuth
      if (tryToken) {
        if (await KeyStorage.hasRefreshToken) {
          var getAccessToken = await UserHttps(googleSignInAccount).post('get_access_token', {
            'accessToken': (await googleSignInAccount.authentication).accessToken,
          },
              tryToken: false,
              tokenType: TokenType.refresh); // 여기 tryToken 은 다른 것
          if (getAccessToken.isOk) {
            var accessToken = jsonDecode(getAccessToken.body)['accessToken'];
            await KeyStorage.setToken(accessToken: accessToken);
            return await _answer(send, tryToken: false);
          } else {
            return result;
          }
        }
      } else {
        return result;
      }
    } else {
      return result;
    }
  }

  Map<String, String> _setHeader(Map<String, String>? header) {
    header ??= <String, String>{};
    header['Content-Type'] = 'application/json';
    return header;
  }

  Future _setToken(TokenType tokenType, Map<String, String>? headers) async {
    String? session;
    switch (tokenType) {
      case TokenType.access:
        session = await KeyStorage.accessToken;
        break;
      case TokenType.refresh:
        session = await KeyStorage.refreshToken;
        break;
      case TokenType.none:
        break;
    }
    if (session != null) {
      headers?['Authorization'] = 'Bearer $session';
    }
  }

  Uri _path(
      String url, {
        Map<String, dynamic>? query,
      }){
    return Uri.http(_baseURL, '$path/$url', query);
  }
}

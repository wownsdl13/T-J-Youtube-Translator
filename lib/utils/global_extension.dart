import 'package:http/http.dart' as http;
extension IntegerExtension on http.Response{
  bool get isOk => statusCode >= 200 && statusCode <= 299;
  bool get unauthorized => statusCode == 401;
  bool get isForbidden => statusCode == 403;
}
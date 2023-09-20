import 'dart:convert';
import 'package:http/http.dart' as http;
import 'url.dart';

class Server {
  static Uri Function(dynamic url) parseUri =
      (url) => Uri.parse(Urls.DOMAIN.toString() + url);

  static Future<Map<String, dynamic>> _request(String method, String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    var response;
    var header = {'Content-Type': 'application/json', ...?headers};
    try {
      switch (method) {
        case 'GET':
          response = await http.get(parseUri(url), headers: header);
          break;
        case 'POST':
          response = await http.post(parseUri(url),
              headers: header, body: json.encode(body), encoding: encoding);
          break;
        case 'PUT':
          response = await http.put(parseUri(url),
              headers: header, body: body, encoding: encoding);
          break;
        case 'DELETE':
          response = await http.delete(parseUri(url),
              headers: header, body: body, encoding: encoding);
          break;
        default:
          throw Exception('Invalid HTTP method: $method');
      }
    } catch (e) {
      print('Error making $method request to $url: $e');
      // throw Exception('Error making $method request to $url: $e');
    }

    if (response.statusCode != 200) {
      print('Failed to $method $url: ${response.statusCode}');
    }

    return json.decode(response.body);
  }

  static Future<Map<String, dynamic>> get(String url,
      {Map<String, String>? headers}) async {
    return await _request('GET', url, headers: headers);
  }

  static Future<Map<String, dynamic>> post(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    return await _request('POST', url,
        headers: headers, body: body, encoding: encoding);
  }

  static Future<Map<String, dynamic>> put(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    return await _request('PUT', url,
        headers: headers, body: body, encoding: encoding);
  }

  static Future<Map<String, dynamic>> delete(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    return await _request('DELETE', url,
        headers: headers, body: body, encoding: encoding);
  }
}

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'url.dart';
import 'package:dio/dio.dart';


class Server {
  static Uri Function(dynamic url) parseUri =
      (url) => Uri.parse(Urls.DOMAIN.toString() + url);

  static Dio _dio = Dio();

  static Future<Map<String, dynamic>> _request(String method, String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    try {
      Response response;

      switch (method) {
        case 'GET':
          response =
              await _dio.get(parseUri(url), options: Options(headers: header));
          break;
        case 'POST':
          response = await _dio.post(parseUri(url),
              data: body, options: Options(headers: header));
          break;
        case 'PUT':
          response = await _dio.put(parseUri(url),
              data: body, options: Options(headers: header));
          break;
        case 'DELETE':
          response = await _dio.delete(parseUri(url),
              data: body, options: Options(headers: header));
          break;
        default:
          throw Exception('Invalid HTTP method: $method');
      }

      return response.data;
    } catch (e) {
      if (kDebugMode) {
        print('Error making $method request to $url: $e');
      }
      // throw Exception('Error making $method request to $url: $e');
    }
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

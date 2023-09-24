// ignore: file_names
import 'server.dart';

enum Method { post, get, put, delete }

class RepositoryBase {
  static Future<dynamic> callApi(Method method, String url, dynamic body,
      [Map<String, String>? headers]) async {
    if (method == Method.get) {
      return await Server.get(url.toString(), headers: headers);
    }
    if (method == Method.post) {
      return await Server.post(url.toString(), body: body, headers: headers);
    }
    if (method == Method.put) {
      return await Server.put(url.toString(), body: body, headers: headers);
    }
    if (method == Method.delete) {
      return await Server.delete(url.toString(), body: body, headers: headers);
    }

    return {
      'status': 0,
      'data': {'message': 'Not found method'}
    };
  }
}

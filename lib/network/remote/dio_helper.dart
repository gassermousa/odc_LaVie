import 'package:dio/dio.dart';
import 'package:la_vie/network/remote/end_points.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    BaseOptions options = BaseOptions(
      baseUrl: 'https://lavie.orangedigitalcenteregypt.com/',
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
      receiveDataWhenStatusError: true,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "Authorization": "Bearer ${EndPoint.token}",
      },
    );

    dio = Dio(options);
  }

  static Future<Response> getData({
    required String urlEndPoint,
    Map<String, dynamic>? query,
  }) async {
    dio.options.headers = {
      "Authorization": "Bearer ${EndPoint.token}",
    };
    Response response = await dio.get(
      urlEndPoint,
      queryParameters: query,
    );
    return response;
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token ?? '',
    };

    return dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}

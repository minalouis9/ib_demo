import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:ib_demo/globals/globals_index.dart';
import 'package:ib_demo/helpers/dio_logging_interceptor.dart';

class NetworkHelper {
  late Dio _dio;
  late String _baseUrl;

  final Map<String, dynamic> fixedHeaders = {
    'X-localization': 'en',
    'Accept': 'application/json'
  };

  NetworkHelper() {
    var options = BaseOptions(
      connectTimeout: kConnectTimeout,
      receiveTimeout: kReceiveTimeout,
    );
    _dio = Dio(options);
    _baseUrl = kBaseUrl;

    if (kCacheResponse) {
      _dio.interceptors
          .add(DioCacheManager(CacheConfig(baseUrl: _baseUrl)).interceptor);
    }

    // Always the last interceptor to be added, to be able to log all the changes made by previous interceptors
    if (kVerboseNetworkMessages) {
      _dio.interceptors.add(DioLoggingInterceptor());
    }
  }

  void cancelRequest(CancelToken cancelToken) {
    cancelToken.cancel();
  }

  Future<dynamic> getData(
      {required String path,
      CancelToken? cancelToken,
      Map<String, dynamic>? queryParam,
      Map<String, dynamic>? headers}) async {
    try {
      if (headers != null) {
        fixedHeaders.addAll(headers);
      }

      Response response = await _dio.get(_baseUrl + path,
          cancelToken: cancelToken,
          queryParameters: queryParam,
          options: Options(headers: fixedHeaders));

      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {}
  }

  Future<dynamic> postData(
      {required String path,
      CancelToken? cancelToken,
      Map<String, dynamic>? queryParam,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers,
      List<Map<String, String>>? files,
      bool monitorSendProgress = false,
      bool monitorReceiveProgress = false}) async {
    try {
      if (headers != null) {
        fixedHeaders.addAll(headers);
      }

      Map<String, dynamic> map = {};
      if (body != null) {
        map.addAll(body);
      }

      if (files != null) {
        map['files'] = [];
        for (Map<String, String> file in files) {
          map['files'].add(await MultipartFile.fromFile(file['path']!,
              filename: file['filename']));
        }
      }

      var formData = FormData.fromMap(map);
      Response response = await _dio.post(_baseUrl + path,
          cancelToken: cancelToken,
          queryParameters: queryParam,
          data: formData,
          options: Options(headers: fixedHeaders));

      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {}
  }

  Future<dynamic> putData(
      {required String path,
      CancelToken? cancelToken,
      Map<String, dynamic>? queryParam,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers,
      List<Map<String, String>>? files}) async {
    try {
      if (headers != null) {
        fixedHeaders.addAll(headers);
      }
      Map<String, dynamic> map = {};
      if (body != null) {
        map.addAll(body);
      }
      if (files != null) {
        map['files'] = [];
        for (Map<String, String> file in files) {
          map['files'].add(await MultipartFile.fromFile(file['path']!,
              filename: file['filename']));
        }
      }

      var formData = FormData.fromMap(map);
      Response response = await _dio.put(_baseUrl + path,
          cancelToken: cancelToken,
          queryParameters: queryParam,
          data: formData,
          options: Options(headers: fixedHeaders));

      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {}
  }

  Future<dynamic> deleteData(
      {required String path,
      CancelToken? cancelToken,
      Map<String, dynamic>? queryParam,
      Map<String, dynamic>? headers}) async {
    try {
      if (headers != null) {
        fixedHeaders.addAll(headers);
      }
      Response response = await _dio.delete(_baseUrl + path,
          cancelToken: cancelToken,
          queryParameters: queryParam,
          options: Options(headers: fixedHeaders));

      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {}
  }
}

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import 'log_utils.dart';

final _ApiHelper ApiHelper = _ApiHelper();

class _ApiHelper {
  var _dio = Dio(BaseOptions(
    connectTimeout: Duration(seconds: 20),
    receiveTimeout: Duration(seconds: 20),
  ));
  _ApiHelper() {
    // _dio.interceptors.add(PrettyDioLogger());
// customization
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (e, handler) {
          if (e.response?.statusCode != 200) {
            if (e.response?.statusCode == 403) {
              throw Exception("Invalid Username/Password");
            }
            throw Exception();
          }
          // Do stuff here
          handler
              .reject(e); // Added this line to let error propagate outside the
          // interceptor
        },
      ),
    );
  }

  Future<Response?> post({
    required String path,
    required data,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(path, data: data, options: options);
      // logger.i(response.data);
      return response;
    } on Exception catch (e) {
      // logger.e(e);
    }
  }

  Future<Response?> put({
    required String path,
    required data,
    Options? options,
  }) async {
    try {
      final response = await _dio.put(path, data: data, options: options);
      // logger.i(response.data);
      return response;
    } on Exception catch (e) {
      // logger.e(e);
    }
  }

  Future<Response?> get({
    required String path,
    Options? options,
  }) async {
    try {
      final response = await _dio.get(path, options: options);
      // logger.i(response.data);
      return response;
    } on Exception catch (e) {
      // logger.e(e);
    }
  }
}

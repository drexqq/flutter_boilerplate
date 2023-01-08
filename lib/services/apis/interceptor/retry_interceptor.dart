import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/services/apis/interceptor/connectivity_request_retrier.dart';
import 'package:flutter_boilerplate/services/logs/log_service.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final ConnectivityRequestRetrier requestRetrier;
  final LogService logger = LogService();
  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (_shouldRetry(err)) {
      try {
        requestRetrier.scheduleRequestRetry(err.requestOptions);
      } catch (e) {
        logger.w(e.toString());
      }
    }
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.connectTimeout &&
        err.error != null &&
        err.error is SocketException;
  }
}

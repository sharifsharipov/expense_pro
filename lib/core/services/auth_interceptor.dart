import 'dart:async';

import 'package:dio/dio.dart';

import 'package:go_router/go_router.dart';
import 'package:expense_pro/core/database/local_source.dart';
import 'package:expense_pro/core/di/injection.dart';
//import 'package:expense_pro/features/auth/data/repositories/auth_repositories_impl.dart';
import 'package:expense_pro/router/routes.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({required this.localSource});

  final LocalSource localSource;

  Completer<bool>? _refreshCompleter;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final skipAuth = options.extra['skipAuth'] == true;
    if (!skipAuth &&
        localSource.hasProfile &&
        options.headers['Authorization'] == null) {
      options.headers['Authorization'] = 'Bearer ${localSource.accessToken}';
    }

    if (options.queryParameters['lang'] == null) {
      options.queryParameters['lang'] = localSource.locale;
    }

    if (localSource.hasProfile &&
        options.queryParameters['studentId'] == null) {
      options.queryParameters['studentId'] = localSource.userId;
    }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final alreadyRetried = err.requestOptions.extra['retried'] == true;
    final skipAuthRefresh = err.requestOptions.extra['skipAuthRefresh'] == true;

    /// if has profile
    if (localSource.hasProfile &&
        err.response?.statusCode == 401 &&
        !skipAuthRefresh &&
        !alreadyRetried) {
      err.requestOptions.extra['retried'] = true;
      if (_refreshCompleter != null) {
        /// wait anf request cloned request with new token
        final result = await _refreshCompleter?.future;
        if (result == false) {
          handler.next(err);
          return;
        }

        final clonedRequest = await _retryRequest(err.requestOptions);
        handler.resolve(clonedRequest);
        return;
      } else {
        _refreshCompleter = Completer();

        /*       final result = await AuthRepository(
          dio: sl<Dio>(),
          localSource: localSource,
        ).refreshToken();
        if (result.isRight) {
          _refreshCompleter?.complete(true);
          _refreshCompleter = null;
          final clonedRequest = await _retryRequest(err.requestOptions);
          handler.resolve(clonedRequest);
          return;
        }*/

        _refreshCompleter?.complete(false);
        _refreshCompleter = null;

        if (localSource.hasProfile) {
          await localSource.clear();
          rootNavigatorKey.currentContext!.go(Routes.auth);
        }
      }
    }

    super.onError(err, handler);
  }

  /// retry request with new access token
  Future<Response> _retryRequest(RequestOptions requestOptions) async {
    final newAccessToken = localSource.accessToken;

    final options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer $newAccessToken',
      },
      extra: requestOptions.extra,
    );

    return sl<Dio>().request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}

import 'package:dio/dio.dart' hide Headers;
import 'package:expense_pro/core/extensions/localization_extension.dart';

class ServerException implements Exception {
  ServerException.withDioException({required DioException error}) {
    _handleError(error);
  }

  ServerException.withException(String message) {
    _statusCode = 505;
    _message = message;
  }

  String _message = '';
  late int _statusCode;
  String? _type;
  dynamic _data;

  String? get type => _type;

  int get statusCode => _statusCode;

  String get message => _message;

  dynamic get data => _data;

  Future<void> _handleError(DioException error) async {
    _statusCode = error.response?.statusCode ?? 500;
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        _message = localizationWithoutContext.connectionTimeOut;
      case DioExceptionType.sendTimeout:
        _message = localizationWithoutContext.connectionTimeOut;
      case DioExceptionType.receiveTimeout:
        _message = localizationWithoutContext.connectionTimeOut;
      case DioExceptionType.badResponse:
        {
          try {
            _message = error.response?.data?['message'].toString() ?? '';
            _type = error.response?.data['code']?.toString();
            _data = error.response?.data;
          } catch (e, _) {
            _message = localizationWithoutContext.somethingWrong;
          }

          /// base error
          if (_statusCode >= 500) {
            _message = localizationWithoutContext.serverError;
          }
          if (_statusCode == 401) {
            final msg = error.response?.data?['message']?.toString() ?? '';
            if (msg == 'incorrect_password') {
              _message = localizationWithoutContext.invalidPassword;
            } else if (msg == 'user_not_found') {
              _message = localizationWithoutContext.userNotFound;
            }else{
              _message = localizationWithoutContext.unauthorizedMessage;

            }
          }
          break;
        }
      case DioExceptionType.cancel:
        _message = 'Canceled';
      case DioExceptionType.badCertificate:
        _message = localizationWithoutContext.serverError;
      case DioExceptionType.connectionError:
        _message = localizationWithoutContext.connectionTimeOut;
      case DioExceptionType.unknown:
        _message = localizationWithoutContext.unexpectedError;
    }
  }
}

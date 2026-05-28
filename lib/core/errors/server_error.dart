import 'package:dio/dio.dart' hide Headers;
import 'package:expense_pro/core/errors/failure.dart';


final class ServerError implements Exception {
  ServerError.withDioError({required DioException error}) {
    _handleError(error);
  }

  ServerError.withError({
    required String message,
    int? code,
  }) {
    _errorMessage = message.isNotEmpty ? message : "Unknown error";
    _errorCode = code ?? 500;
  }

  int? _errorCode;
  String _errorMessage = "";

  int get errorCode => _errorCode ?? 0;

  String get message => _errorMessage;

  void _handleError(DioException error) {
    _errorCode = error.response?.statusCode ?? 500;

    switch (_errorCode) {
      case 500:
        _errorMessage = "Server error";
        break;
      case 502:
        _errorMessage = "Server down";
        break;
      case 404:
        _errorMessage = "Not Found";
        break;
      case 413:
        _errorMessage = "Request Entity Too Large";
        break;
      case 401:
        _errorMessage = "Token expired";
        break;
      case 403:
        _errorMessage = "Forbidden access";  // Differentiated message
        break;
      default:
        _handleDioErrorType(error);
    }
  }

  void _handleDioErrorType(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        _errorMessage = "Connection timeout";
        break;
      case DioExceptionType.sendTimeout:
        _errorMessage = "Connection timeout";
        break;
      case DioExceptionType.receiveTimeout:
        _errorMessage = "Connection timeout";
        break;
      case DioExceptionType.badResponse:
        if (error.response?.data != null &&
            error.response?.data["Error"] is Map<String, dynamic>) {
          _errorMessage = error.response!.data["Error"]["message"].toString();
        } else if (error.response?.data["message"] != null) {
          _errorMessage = error.response!.data["message"].toString();
        } else {
          _errorMessage = "Unknown server error";
        }
        break;
      case DioExceptionType.cancel:
        _errorMessage = "Canceled";
        break;
      case DioExceptionType.unknown:
        _errorMessage = "Something wrong";
        break;
      case DioExceptionType.badCertificate:
        _errorMessage = "Bad certificate";
        break;
      case DioExceptionType.connectionError:
        _errorMessage = "Connection error";
        break;
    }
  }
}

extension ServerErrorExtension on ServerError {
  bool get isTokenExpired => errorCode == 401;

  ServerFailure get failure => ServerFailure(
        message: message,
        statusCode: errorCode,
      );
}
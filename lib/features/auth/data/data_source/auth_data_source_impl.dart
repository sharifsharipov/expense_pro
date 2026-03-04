import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:expense_pro/core/errors/failure.dart';
import 'package:expense_pro/core/errors/server_error.dart';
import 'package:expense_pro/core/models/either/either.dart';
import 'package:expense_pro/features/auth/data/data_source/auth_data_source.dart';
import 'package:expense_pro/features/auth/data/models/auth_request/auth_request.dart';
import 'package:expense_pro/features/auth/data/models/auth_response/auth_response.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  final Dio _dio;
  AuthDataSourceImpl({required Dio dio}) : _dio = dio;
  @override
  Future<Either<Failure, AuthResponse>> login({
    required AuthRequest request,
  }) async {
    try {
      final response = await _dio.post("", data: request.toJson());
      log("Response data: ${response.data}");
      return Right(AuthResponse.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log("Exception occurred: $error stacktrace: $stacktrace");
      return Left<Failure, AuthResponse>(
        ServerError.withDioError(error: error).failure,
      );
    } on Exception catch (error, stacktrace) {
      log("Exception occurred: $error stacktrace: $stacktrace");
      return Left<Failure, AuthResponse>(
        ServerError.withError(message: error.toString()).failure,
      );
    }
  }
}

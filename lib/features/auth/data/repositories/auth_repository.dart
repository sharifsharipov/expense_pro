import 'package:dio/dio.dart';
import 'package:expense_pro/core/database/local_source.dart';
import 'package:expense_pro/core/errors/exceptions.dart';
import 'package:expense_pro/core/errors/failure.dart';
import 'package:expense_pro/core/models/either/either.dart';
import 'package:expense_pro/core/utils/utils.dart';

class AuthRepository {
  AuthRepository({
    required Dio dio,
    required LocalSource localSource,
  })  : _dio = dio,
        _localSource = localSource;

  final Dio _dio;
  final LocalSource _localSource;

  Future<Either<Failure, Unit>> refreshToken() async {
    final refreshToken = _localSource.refreshToken;
    if (refreshToken.isEmpty) {
      return const Left(
        ServerFailure(
          message: 'Refresh token is missing',
          statusCode: 401,
        ),
      );
    }

    try {
      final response = await _dio.post(
        '/auth/refresh',
        data: {'refreshToken': refreshToken},
        options: Options(extra: {'skipAuthRefresh': true, 'skipAuth': true}),
      );

      final data = response.data;
      final accessToken = _readToken(
        data,
        const ['accessToken', 'access_token', 'token'],
      );
      final newRefreshToken = _readToken(
        data,
        const ['refreshToken', 'refresh_token'],
      );

      if (accessToken == null || accessToken.isEmpty) {
        return Left(
          ServerFailure(
            message: 'Refresh token response does not contain access token',
            statusCode: 500,
            data: data,
          ),
        );
      }

      await _localSource.setAccessToken(accessToken);

      if (newRefreshToken != null && newRefreshToken.isNotEmpty) {
        await _localSource.setRefreshToken(newRefreshToken);
      }

      return const Right(unit);
    } on DioException catch (e) {
      final exception = ServerException.withDioException(error: e);
      return Left(ServerFailure.fromException(exception));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  String? _readToken(dynamic data, List<String> keys) {
    if (data is! Map) {
      return null;
    }

    for (final key in keys) {
      final value = data[key];
      if (value is String && value.isNotEmpty) {
        return value;
      }
    }

    return null;
  }
}

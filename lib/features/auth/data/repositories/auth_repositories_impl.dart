import 'package:expense_pro/core/errors/failure.dart';
import 'package:expense_pro/core/models/either/either.dart';
import 'package:expense_pro/features/auth/data/data_source/auth_data_source.dart';
import 'package:expense_pro/features/auth/data/mapper/auth_mapper.dart';
import 'package:expense_pro/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:expense_pro/features/auth/domain/repositories/auth_repositories.dart';
import 'package:expense_pro/features/auth/domain/usecases/auth_usecase/auth_usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepositories)
class AuthRepositoriesImpl implements AuthRepositories {
  final AuthDataSource _dataSource;
  AuthRepositoriesImpl({required AuthDataSource dataSource})
    : _dataSource = dataSource;
  @override
  Future<Either<Failure, AuthEntity>> login({
    required AuthParams request,
  }) async {
    final result = await _dataSource.login(
      request: AuthMapper.toRequest(request),
    );
    return result.fold(
      (failure) => Left(failure),
      (response) => Right(AuthMapper.toEntity(response)),
    );
  }
}

import 'package:expense_pro/core/errors/failure.dart';
import 'package:expense_pro/core/models/either/either.dart';
import 'package:expense_pro/core/usecase/usecase.dart';
import 'package:expense_pro/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:expense_pro/features/auth/domain/repositories/auth_repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'auth_usecase.freezed.dart';

@lazySingleton
class AuthUsecase extends UseCase<AuthEntity, AuthParams> {
  AuthUsecase({required this.repositories});
  final AuthRepositories repositories;

  @override
  Future<Either<Failure, AuthEntity>> call(AuthParams params) async =>
      await repositories.login(request: params);
}

@freezed
abstract class AuthParams with _$AuthParams {
  const factory AuthParams({
    required String email,
    required String password,
    required String phoneNumber,
    required String gender,
  }) = _AuthRequest;
}

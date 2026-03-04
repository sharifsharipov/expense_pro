import 'package:expense_pro/core/errors/failure.dart' show Failure;
import 'package:expense_pro/core/models/either/either.dart';
import 'package:expense_pro/features/auth/domain/entities/auth_entity/auth_entity.dart'
    show AuthEntity;
import 'package:expense_pro/features/auth/domain/usecases/auth_usecase/auth_usecase.dart';

abstract class AuthRepositories {
  Future<Either<Failure, AuthEntity>> login({required AuthParams request});
}

import 'package:expense_pro/features/auth/data/models/auth_request/auth_request.dart';
import 'package:expense_pro/features/auth/data/models/auth_response/auth_response.dart';
import 'package:expense_pro/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:expense_pro/features/auth/domain/usecases/auth_usecase/auth_usecase.dart';

sealed class AuthMapper {
  AuthMapper._();
  static AuthEntity toEntity(AuthResponse response) => AuthEntity(
    accessToken: response.accessToken,
    refreshToken: response.refreshToken,
    user: UserEntity(
      id: response.user.id,
      email: response.user.email,
      role: response.user.role,
    ),
  );
  static AuthRequest toRequest(AuthParams params) => AuthRequest(
    email: params.email,
    password: params.password,
    phoneNumber: params.phoneNumber,
    gender: params.gender,
  );
}
//AuthParams //AuthRequest
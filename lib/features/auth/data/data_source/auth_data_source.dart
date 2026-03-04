import 'package:expense_pro/core/errors/failure.dart';
import 'package:expense_pro/core/models/either/either.dart';
import 'package:expense_pro/features/auth/data/models/auth_request/auth_request.dart';
import 'package:expense_pro/features/auth/data/models/auth_response/auth_response.dart';

abstract class AuthDataSource {
  Future<Either<Failure,AuthResponse>> login({required AuthRequest request});
}
part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial({
    @Default(Status.pure) Status status,
    @Default(UnknownFailure()) Failure failure,
    AuthEntity? authEntity,
  }) = _Initial;
}

part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default(Status.pure) Status  status,
    @Default(UnknownFailure())Failure failure,
  }) = _Initial;
}

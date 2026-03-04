import 'package:bloc/bloc.dart';
import 'package:expense_pro/core/enums/status.dart' show Status;
import 'package:expense_pro/core/errors/failure.dart';
import 'package:expense_pro/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:expense_pro/features/auth/domain/usecases/auth_usecase/auth_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUsecase usecase;
  AuthBloc({required this.usecase}) : super(_Initial()) {
    on<_Auth>(_onAuth);
  }
  Future<void> _onAuth(_Auth event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: Status.pure));
    final result = await usecase(event.params);
    result.fold(
      (failure) =>
          emit(state.copyWith(status: Status.failed, failure: failure)),
      (authEntity) =>
          emit(state.copyWith(status: Status.success, authEntity: authEntity)),
    );
  }
}

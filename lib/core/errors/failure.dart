import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

sealed  class LocalizedMessage {
  String getLocalizedMessage(BuildContext context);
}

sealed class Failure extends Equatable implements LocalizedMessage {
  const Failure({this.message = ''});

  final String message;

  @override
  List<Object> get props => [message];
}

class EmptyFailure extends Failure {
  const EmptyFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => '';
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    this.statusCode,
  });

  final int? statusCode;

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Server error occurred: $message';
}

class ConnectionFailure extends Failure {
  const ConnectionFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Please check your internet connection';
}

class UnknownFailure extends Failure {
  const UnknownFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'An unknown error occurred';
}

class GeneralFailure extends Failure {
  const GeneralFailure(String error) : super(message: error);

  @override
  String getLocalizedMessage(BuildContext context) => message;
}

class UnAuthorizationFailure extends Failure {
  const UnAuthorizationFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Unauthorized access';
}

class EmailPasswordWrongFailure extends Failure {
  const EmailPasswordWrongFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Incorrect email or password';
}

class UserNotFound extends Failure {
  const UserNotFound() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'User not found';
}

class WrongCodeFailure extends Failure {
  const WrongCodeFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Invalid code';
}

class CacheFailure extends Failure {
  const CacheFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Cache error';
}

class EnterValidPhoneFailure extends Failure {
  const EnterValidPhoneFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Please enter a valid phone number';
}

class AlreadyInUseFailure extends Failure {
  const AlreadyInUseFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Already in use';
}

class UserDeactivedFailure extends Failure {
  const UserDeactivedFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'User account has been deactivated';
}

class HaveNotPurchasedFailure extends Failure {
  const HaveNotPurchasedFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'No purchase found';
}
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'exceptions.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
    required this.statusCode,
    this.type,
    this.data,
  });

  final String message;
  final int statusCode;
  final String? type;
  final dynamic data;

  String get errorMessage => message;

  @override
  List<Object?> get props => [message, statusCode, type, data];
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    required super.statusCode,
    super.type,
    super.data,
  });

  ServerFailure.fromException(ServerException exception)
      : this(
          type: exception.type,
          message: exception.message,
          statusCode: exception.statusCode,
          data: exception.data,
        );
}
class UnknownFailure extends Failure {
  const UnknownFailure() : super(message: 'Unknown error', statusCode: 0);

  String getLocalizedMessage(BuildContext context) =>
      'An unknown error occurred';
}
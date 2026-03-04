part of 'routes.dart';

sealed class Routes {
  Routes._();

  ///[auth]
  static const String initial = '/initial';
  static const String auth = '/auth';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
}

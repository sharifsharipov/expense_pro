part of 'routes.dart';

sealed class Routes {
  Routes._();

  ///[initial]
  static const String initial = '/initial';

  ///[auth]
  static const String auth = '/auth';
  static const String login = '/login';

  ///[main]
  static const String main = '/main';

  ///[home]
  static const String home = '/home';
  static const String homeDescription = '/home-description';

  ///[addExpense]
  static const String addExpense = '/add-expense';

  ///[goals]
  static const String goals = '/goals';
  static const String goalsDescription = '/goals-description';

  ///[finance]
  static const String finance = '/finance';
  static const String financeDescription = '/finance-description';

  ///[profile]
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String achievements = '/achievements';
  static const String notifications = '/notifications';
  static const String habits = '/habits';
  static const String subscription = '/subscription';
  static const String language = '/language';
  static const String theme = '/theme';
  static const String userInfo = '/user-info';
  static const String automationsRules = '/automations-rules';
  static const String aboutApplication = '/about-application';
}

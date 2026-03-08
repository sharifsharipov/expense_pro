part of 'routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final PackageInfo packageInfo = sl<PackageInfo>();
final NetworkInfo networkInfo = sl<NetworkInfo>();
final LocalSource localSource = sl<LocalSource>();

final Chuck chuck = Chuck(navigatorKey: rootNavigatorKey);

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.home,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: Routes.auth,
      name: Routes.auth,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => BlocProvider(
        create: (context) => sl<AuthBloc>(),
        child: const AuthPage(),
      ),
    ),
    GoRoute(
      path: Routes.login,
      name: Routes.login,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const LoginPage(),
    ),
    GoRoute(
      path: Routes.addExpense,
      name: Routes.addExpense,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const AddExpensePage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (_, __, navigationShell) => BlocProvider(
        create: (context) => sl<MainBloc>(),
        child: MainPage(navigationShell: navigationShell),
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.home,
              name: Routes.home,
              builder: (_, __) => const HomePage(),
            ),
            GoRoute(
              path: Routes.homeDescription,
              name: Routes.homeDescription,
              builder: (_, __) => const HomeDescription(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.finance,
              name: Routes.finance,
              builder: (_, __) => const FinancePage(),
            ),
            GoRoute(
              path: Routes.financeDescription,
              name: Routes.financeDescription,
              builder: (_, __) => const FinanceDescriptionPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.goals,
              name: Routes.goals,
              builder: (_, __) => const GoalsPage(),
            ),
            GoRoute(
              path: Routes.goalsDescription,
              name: Routes.goalsDescription,
              builder: (_, __) => const GoalsDescriptionPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profile,
              name: Routes.profile,
              builder: (_, __) => const ProfilePage(),
            ),
            GoRoute(
              path: Routes.settings,
              name: Routes.settings,
              builder: (_, __) => const SettingsPage(),
            ),
            GoRoute(
              path: Routes.achievements,
              name: Routes.achievements,
              builder: (_, __) => const AchievementsPage(),
            ),
            GoRoute(
              path: Routes.notifications,
              name: Routes.notifications,
              builder: (_, __) => const NotificationsPage(),
            ),
            GoRoute(
              path: Routes.habits,
              name: Routes.habits,
              builder: (_, __) => const HabitsTrackerPage(),
            ),
            GoRoute(
              path: Routes.subscription,
              name: Routes.subscription,
              builder: (_, __) => const SubscriptionsPage(),
            ),
            GoRoute(
              path: Routes.language,
              name: Routes.language,
              builder: (_, __) => const LanguagePage(),
            ),
            GoRoute(
              path: Routes.theme,
              name: Routes.theme,
              builder: (_, __) => const ThemePage(),
            ),
            GoRoute(
              path: Routes.userInfo,
              name: Routes.userInfo,
              builder: (_, __) => const UserOnfoPage(),
            ),
            GoRoute(
              path: Routes.automationsRules,
              name: Routes.automationsRules,
              builder: (_, __) => const AutomationsRulesPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

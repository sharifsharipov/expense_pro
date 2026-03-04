import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/themes/app_theme.dart';
import 'package:expense_pro/generated/l10n.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    theme: Themes.lightTheme,
    darkTheme: Themes.darkTheme,
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
    /* context.options.locale. const Locale('en')*/
    locale: context.options.locale,

    /// localization
    localizationsDelegates: const [
      S.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale('en'),
      Locale('ru'),
      Locale('uz'),
      Locale('fr'),
    ],

    /// pages
    routerDelegate: router.routerDelegate,
    routeInformationParser: router.routeInformationParser,
    routeInformationProvider: router.routeInformationProvider,
  );
}

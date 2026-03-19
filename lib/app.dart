import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/themes/app_theme.dart';
import 'package:expense_pro/generated/l10n.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Получаем текущие настройки из твоего AppOptions через extension
    ////
    final options = context.options;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      // Этот метод из твоего AppOptions правильно подкрасит статус-бар
      value: options.resolvedSystemUiOverlayStyle(),
      child: MaterialApp.router(
        /// Темы
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        
        // ТЕПЕРЬ ТЕМА БЕРЕТСЯ ИЗ НАСТРОЕК (light, dark или system)
        themeMode: options.themeMode, 
        
        debugShowCheckedModeBanner: false,

        /// Локализация
        // ТЕПЕРЬ ЛОКАЛЬ ТОЖЕ БЕРЕТСЯ ИЗ НАСТРОЕК. options.locale
        locale: options.locale,
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

        /// Навигация (go_router)
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
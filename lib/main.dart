import 'dart:async';
import 'dart:io';

import 'package:expense_pro/app.dart';
import 'package:expense_pro/core/database/local_source.dart';
import 'package:expense_pro/core/di/injection.dart';
import 'package:expense_pro/core/models/app_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'core/utils/utils.dart';

Future<void> main() async {
  // 1. Обязательная инициализация для плагинов и Bindings
  WidgetsFlutterBinding.ensureInitialized();
  // 2. Инициализация DI (внутри которого открывается Hive Box и регистрируется LocalSource)
  await configureDI();
  // 3. Настройка логирования Bloc (только для дебага)
  if (kDebugMode) {
    Bloc.observer = LogBlocObserver();
  }
  // 4. Глобальный обход сертификатов (если нужно для дев-сервера)
  HttpOverrides.global = MyHttpOverrides();
  // 5. ПОЛУЧАЕМ СОХРАНЕННЫЕ НАСТРОЙКИ ИЗ HIVE
  final localSource = sl<LocalSource>();
  // Читаем тему и язык напрямую из твоего LocalSource
  final initialTheme = localSource.themeMode;
  final initialLanguage = AppOptions.languageFromCode(localSource.locale);

  runApp(
    ModelBinding(
      initialModel: AppOptions(
        themeMode: initialTheme,
        language: initialLanguage,
      ),
      child: const App(),
    ),
  );
}

/// Класс для работы с HTTP сертификатами (как в твоем исходнике)
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback = (cert, host, port) => true;
}

/// flutter pub run flutter_launcher_icons:main
/// flutter run -d windows
/// flutter run --release
/// flutter build apk --release
/// flutter build apk --split-per-abi
/// flutter build appbundle --release
/// flutter pub run build_runner watch --delete-conflicting-outputs
/// flutter pub ipa
/// dart fix --apply
/// flutter run -d chrome
//FlutterNativeSplash.remove();
/*  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    /// init crashlytics first to detect any error during app initialization
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  } catch (e) {
    // Handle Firebase initialization error (e.g., during hot restart)
    if (kDebugMode) {
      print('Firebase initialization error: $e');
    }
  }*/

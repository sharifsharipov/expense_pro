import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:expense_pro/app.dart';
import 'package:expense_pro/core/di/injection.dart';
import 'package:expense_pro/core/models/app_options.dart';
import 'package:expense_pro/core/services/notification_service.dart';
import 'package:expense_pro/firebase_options.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'core/utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// init firebase
  try {
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
  }

  // await dotenv.load();
  await Future.wait(
    [initializeNotification(), configureDI()] as Iterable<Future<dynamic>>,
  );

  /// bloc logger
  if (kDebugMode) {
    Bloc.observer = LogBlocObserver();
  }

  /// global CERTIFICATE_VERIFY_FAILEd_KEY
  HttpOverrides.global = MyHttpOverrides();

  if (kDebugMode) {
    Bloc.observer = LogBlocObserver();
  }

  runApp(
    ModelBinding(
      initialModel: AppOptions(
        themeMode: ThemeMode.light,
        language: AppOptions.languageFromCode(localSource.locale),
      ),
      child: const App(),
    ),
  );
}

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
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:expense_pro/constants/constants.dart';
import 'package:expense_pro/core/connectivity/network_info.dart';
import 'package:expense_pro/core/services/auth_interceptor.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

import '../database/local_source.dart';
import 'injection.dart';

@module
abstract class GeneralModule {
  @preResolve
  @singleton
  Future<LocalSource> provideLocalSource() async {
    const boxName = 'expense_pro_box';
    final Directory directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    final box = await Hive.openBox<dynamic>(boxName);
    return LocalSource(box);
  }

  @singleton
  Dio provideDio() {
    final dio = Dio()
      ..options = BaseOptions(
        baseUrl: Constants.baseUrl,
        contentType: 'application/json',
        sendTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      )
      ..httpClientAdapter = IOHttpClientAdapter(
        // createHttpClient: () {
        //   final HttpClient client = HttpClient()
        //     ..badCertificateCallback =
        //         (X509Certificate cert, String host, __) {
        //       log('cert: ${cert.pem}');
        //       log('host: $host');
        //       return cert.pem == localSource.certificate;
        //     };
        //   return client;
        // },
        validateCertificate: (cert, host, __) {
          // log('cert: ${cert?.pem}');
          // log('host: $host');
          if (cert == null) {
            return true;
          }
          return true;
        },
      )
      ..interceptors.addAll([
        if (Constants.showChuck) chuck.dioInterceptor,
        if (kDebugMode) LogInterceptor(requestBody: true, responseBody: true),

        /// auth interceptor
        AuthInterceptor(localSource: sl<LocalSource>()),
      ]);

    return dio;
  }

  @singleton
  Future<PackageInfo> providePackageInfo() => PackageInfo.fromPlatform();

  @singleton
  InternetConnectionChecker provideConnectivity() =>
      InternetConnectionChecker.createInstance(
        checkInterval: const Duration(seconds: 3),
      );
}

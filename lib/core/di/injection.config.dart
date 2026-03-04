// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:package_info_plus/package_info_plus.dart' as _i655;

import '../connectivity/network_info.dart' as _i511;
import '../database/local_source.dart' as _i363;
import 'general_module.dart' as _i801;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final generalModule = _$GeneralModule();
    await gh.singletonAsync<_i363.LocalSource>(
      () => generalModule.provideLocalSource(),
      preResolve: true,
    );
    gh.singleton<_i361.Dio>(() => generalModule.provideDio());
    gh.singletonAsync<_i655.PackageInfo>(
      () => generalModule.providePackageInfo(),
    );
    gh.singleton<_i511.InternetConnectionChecker>(
      () => generalModule.provideConnectivity(),
    );
    return this;
  }
}

class _$GeneralModule extends _i801.GeneralModule {}

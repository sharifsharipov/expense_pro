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

import '../../features/auth/data/data_source/auth_data_source.dart' as _i364;
import '../../features/auth/data/data_source/auth_data_source_impl.dart'
    as _i985;
import '../../features/auth/data/repositories/auth_repositories_impl.dart'
    as _i394;
import '../../features/auth/domain/repositories/auth_repositories.dart'
    as _i962;
import '../../features/auth/domain/usecases/auth_usecase/auth_usecase.dart'
    as _i767;
import '../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i661;
import '../../features/finance/data/data_source/finance_data_source.dart'
    as _i942;
import '../../features/finance/data/data_source/finance_data_source_impl.dart'
    as _i186;
import '../../features/finance/data/repositories/finance_repositories_impl.dart'
    as _i223;
import '../../features/finance/domain/repositories/finance_repositories.dart'
    as _i1044;
import '../../features/goals/data/data_source/goals_data_source.dart' as _i918;
import '../../features/goals/data/data_source/goals_data_source_impl.dart'
    as _i248;
import '../../features/goals/data/repositories/goals_repositories_impl.dart'
    as _i430;
import '../../features/goals/domain/repositories/goals_repositories.dart'
    as _i848;
import '../../features/home/data/data_source/home_data_source.dart' as _i68;
import '../../features/home/data/data_source/home_data_source_impl.dart'
    as _i291;
import '../../features/home/data/repositories/home_repositories_impl.dart'
    as _i751;
import '../../features/home/domain/repositories/home_repositories.dart'
    as _i688;
import '../../features/main/presentation/bloc/main_bloc.dart' as _i1014;
import '../../features/profile/data/data_source/profile_data_source.dart'
    as _i519;
import '../../features/profile/data/data_source/profile_data_source_impl.dart'
    as _i853;
import '../../features/profile/data/repositories/profile_repositories_impl.dart'
    as _i127;
import '../../features/profile/domain/repositories/profile_repositories.dart'
    as _i367;
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
    gh.factory<_i1014.MainBloc>(() => _i1014.MainBloc());
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
    gh.lazySingleton<_i519.ProfileDataSource>(
      () => _i853.ProfileDataSourceImpl(),
    );
    gh.lazySingleton<_i68.HomeDataSource>(() => _i291.HomeDataSourceImpl());
    gh.lazySingleton<_i688.HomeRepositories>(
      () => _i751.HomeRepositoriesImpl(dataSource: gh<_i68.HomeDataSource>()),
    );
    gh.lazySingleton<_i364.AuthDataSource>(
      () => _i985.AuthDataSourceImpl(dio: gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i962.AuthRepositories>(
      () => _i394.AuthRepositoriesImpl(dataSource: gh<_i364.AuthDataSource>()),
    );
    gh.lazySingleton<_i942.FinanceDataSource>(
      () => _i186.FinanceDataSourceImpl(),
    );
    gh.lazySingleton<_i918.GoalsDataSource>(() => _i248.GoalsDataSourceImpl());
    gh.lazySingleton<_i767.AuthUsecase>(
      () => _i767.AuthUsecase(repositories: gh<_i962.AuthRepositories>()),
    );
    gh.lazySingleton<_i367.ProfileRepositories>(
      () => _i127.ProfileRepositoriesImpl(
        dataSource: gh<_i519.ProfileDataSource>(),
      ),
    );
    gh.lazySingleton<_i1044.FinanceRepositories>(
      () => _i223.FinanceRepositoriesImpl(
        dataSource: gh<_i942.FinanceDataSource>(),
      ),
    );
    gh.lazySingleton<_i848.GoalsRepositories>(
      () =>
          _i430.GoalsRepositoriesImpl(dataSource: gh<_i918.GoalsDataSource>()),
    );
    gh.factory<_i661.AuthBloc>(
      () => _i661.AuthBloc(usecase: gh<_i767.AuthUsecase>()),
    );
    return this;
  }
}

class _$GeneralModule extends _i801.GeneralModule {}

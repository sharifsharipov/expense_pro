import 'package:expense_pro/features/home/domain/repositories/home_repositories.dart';
import 'package:expense_pro/features/home/data/data_source/home_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepositories)
class HomeRepositoriesImpl implements HomeRepositories {
  final HomeDataSource _dataSource;
  HomeRepositoriesImpl({required HomeDataSource dataSource})
    : _dataSource = dataSource;
}

import 'package:expense_pro/features/profile/domain/repositories/profile_repositories.dart';
import 'package:expense_pro/features/profile/data/data_source/profile_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepositories)
class ProfileRepositoriesImpl implements ProfileRepositories {
  final ProfileDataSource _dataSource;
  ProfileRepositoriesImpl({required ProfileDataSource dataSource})
    : _dataSource = dataSource;
}

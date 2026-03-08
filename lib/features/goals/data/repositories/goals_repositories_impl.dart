import 'package:expense_pro/features/goals/domain/repositories/goals_repositories.dart';
import 'package:expense_pro/features/goals/data/data_source/goals_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GoalsRepositories)
class GoalsRepositoriesImpl implements GoalsRepositories {
  final GoalsDataSource _dataSource;
  GoalsRepositoriesImpl({required GoalsDataSource dataSource})
    : _dataSource = dataSource;
}

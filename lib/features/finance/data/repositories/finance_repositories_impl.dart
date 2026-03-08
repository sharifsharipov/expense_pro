import 'package:expense_pro/features/finance/domain/repositories/finance_repositories.dart';
import 'package:expense_pro/features/finance/data/data_source/finance_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FinanceRepositories)
class FinanceRepositoriesImpl implements FinanceRepositories {
  final FinanceDataSource _dataSource;
  FinanceRepositoriesImpl({required FinanceDataSource dataSource})
    : _dataSource = dataSource;
}

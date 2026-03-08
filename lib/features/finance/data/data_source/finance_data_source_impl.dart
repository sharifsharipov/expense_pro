import 'package:expense_pro/features/finance/data/data_source/finance_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FinanceDataSource)
class FinanceDataSourceImpl implements FinanceDataSource {}

import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/finance/presentation/pages/finance_page/finance_mixin.dart';
import 'package:flutter/material.dart';

class FinancePage extends StatefulWidget {
  const FinancePage({super.key});

  @override
  State<FinancePage> createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> with FinanceMixin {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: CustomAppBar(leadingVisible: false,title: 'Finance'));
}

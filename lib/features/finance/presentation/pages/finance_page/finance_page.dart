import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/features/finance/presentation/pages/finance_page/finance_mixin.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FinancePage extends StatefulWidget {
  const FinancePage({super.key});

  @override
  State<FinancePage> createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> with FinanceMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(
      leadingVisible: false,
      title: context.locale.finance,
      actions: IconButton(
        onPressed: () => context.pushNamed(Routes.financeDescription),
        icon: Icon(Icons.add),
      ),
    ),
    body: const Center(child: Text('Finance')),
  );
}

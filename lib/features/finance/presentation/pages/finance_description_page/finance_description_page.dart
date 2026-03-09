import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/finance/presentation/pages/finance_description_page/finance_description_mixin.dart';
import 'package:flutter/material.dart';

class FinanceDescriptionPage extends StatefulWidget {
  const FinanceDescriptionPage({super.key});

  @override
  State<FinanceDescriptionPage> createState() => _FinanceDescriptionPageState();
}

class _FinanceDescriptionPageState extends State<FinanceDescriptionPage>
    with FinanceDescriptionMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(title: 'Finance description page'),
    body: const Center(child: Text('Finance description page')),
  );
}

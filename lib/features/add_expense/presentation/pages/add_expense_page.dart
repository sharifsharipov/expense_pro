import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({super.key});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: CustomAppBar(title: 'Add Expense'));
}

import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/goals/presentation/pages/goals_description_page/goals_description_mixin.dart';
import 'package:flutter/material.dart';

class GoalsDescriptionPage extends StatefulWidget {
  const GoalsDescriptionPage({super.key});

  @override
  State<GoalsDescriptionPage> createState() => _GoalsDescriptionPageState();
}

class _GoalsDescriptionPageState extends State<GoalsDescriptionPage>
    with GoalsDescriptionMixin {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: CustomAppBar(title: 'Goals Description'));
}

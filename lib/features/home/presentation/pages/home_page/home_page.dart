import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/home/presentation/pages/home_page/home_mixin.dart'
    show HomeMixin;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomeMixin {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: CustomAppBar(leadingVisible: false, title: 'Home'));
}

import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeDescription extends StatefulWidget {
  const HomeDescription({super.key});

  @override
  State<HomeDescription> createState() => _HomeDescriptionState();
}

class _HomeDescriptionState extends State<HomeDescription> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(title: 'Home Description'),
    body: const Center(child: Text('Home Description')),
  );
}

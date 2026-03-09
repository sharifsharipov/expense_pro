import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/profile/presentation/pages/language_page/language_mixin.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> with LanguageMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(title: 'Language'),
    body: Center(
      child: Text('Language'),
    ),
  );
}

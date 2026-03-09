import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/profile/presentation/pages/theme_page/theme_mixin.dart';
import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> with ThemeMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(title: 'Theme'),
    body: Center(
      child: Text('Theme'),
    ),
  );
}
// Icons.light_mode_outlined,  Icons.dark_mode,  static const Color c_1B93FE=Color(0xff1B93FE);
 
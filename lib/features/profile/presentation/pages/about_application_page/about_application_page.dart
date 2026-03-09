import 'package:expense_pro/core/common/custom_app_bar.dart' show CustomAppBar;
import 'package:expense_pro/features/profile/presentation/pages/about_application_page/about_application_mixin.dart';
import 'package:flutter/material.dart';

class AboutApplicationPage extends StatefulWidget {
  const AboutApplicationPage({super.key});

  @override
  State<AboutApplicationPage> createState() => _AboutApplicationPageState();
}

class _AboutApplicationPageState extends State<AboutApplicationPage> with AboutApplicationMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(title: 'About Application'),
    body: Center(
      child: Text('About Application'),
    ),
  );
}
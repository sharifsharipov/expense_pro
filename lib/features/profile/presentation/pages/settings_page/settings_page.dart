import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/profile/presentation/pages/settings_page/settings_mixin.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with SettingsMixin {
  @override
  Widget build(BuildContext context)=> Scaffold(
    appBar: CustomAppBar(title: 'Settings'),
    body: const Center(child: Text('Settings')),
  );
}

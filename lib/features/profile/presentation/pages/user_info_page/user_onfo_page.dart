import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/profile/presentation/pages/user_info_page/user_info_mixin.dart';
import 'package:flutter/material.dart';

class UserOnfoPage extends StatefulWidget {
  const UserOnfoPage({super.key});

  @override
  State<UserOnfoPage> createState() => _UserOnfoPageState();
}

class _UserOnfoPageState extends State<UserOnfoPage> with UserInfoMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(title: 'User Information'),
    body: const Center(child: Text('User Information')),
  );
}

import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/core/extensions/padding_extensions.dart';
import 'package:expense_pro/features/profile/presentation/pages/parofile_page/profile_mixin.dart';
import 'package:expense_pro/features/profile/presentation/pages/parofile_page/widgets/profile_navigate_widget.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with ProfileMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(leadingVisible: false, title: 'Profile'),
    body: Column(
      spacing: 10,
      children: [
        ProfileNavigateWidget(
          title: 'User Information',
          onTap: () {
            context.pushNamed(Routes.userInfo);
          },
        ).paddingOnly(top: 10),
        ProfileNavigateWidget(
          title: 'Settings',
          onTap: () {
            context.pushNamed(Routes.settings);
          },
        ),
        ProfileNavigateWidget(
          title: 'Subscription',
          onTap: () {
            context.pushNamed(Routes.subscription);
          },
        )
      ],
    ).paddingSymmetric(horizontal: 16),
  );
}

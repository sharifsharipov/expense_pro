import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/extensions/padding_extensions.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/profile/presentation/pages/parofile_page/profile_mixin.dart';
import 'package:expense_pro/features/profile/presentation/pages/parofile_page/widgets/profile_navigate_widget.dart';
import 'package:expense_pro/l10n/assets/assets.gen.dart';
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
        SizedBox(
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: AppUtils.kBorderRadius16,
              color: context.colorScheme.surface,
            ),
            child: Column(
              children: [
                ProfileNavigateWidget(
                  borderRadius: AppUtils.kBorderRadiusTop16,
                  title: 'Subscription',
                  onTap: () {
                    context.pushNamed(Routes.subscription);
                  },
                  icon: Assets.icons.subscription,
                ),
                Divider(height: 0),
                ProfileNavigateWidget(
                  title: 'User Information',
                  onTap: () {
                    context.pushNamed(Routes.userInfo);
                  },
                  icon: Assets.icons.person,
                ),
                Divider(height: 0),
                ProfileNavigateWidget(
                  borderRadius: AppUtils.kBorderRadiusBottom16,
                  title: 'Settings',
                  onTap: () {
                    context.pushNamed(Routes.settings);
                  },
                  icon: Assets.icons.settings,
                ),
              ],
            ),
          ),
        ).paddingOnly(top: 9),
      ],
    ).paddingSymmetric(horizontal: 16),
  );
}

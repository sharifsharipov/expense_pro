import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/extensions/padding_extensions.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/profile/presentation/pages/settings_page/settings_mixin.dart';
import 'package:expense_pro/features/profile/presentation/pages/settings_page/widgets/nottifications_acces_widget.dart';
import 'package:expense_pro/features/profile/presentation/pages/settings_page/widgets/settings_navigate_widget.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:expense_pro/l10n/assets/assets.gen.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with SettingsMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(title: 'Settings'),
    body: Column(
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
                NottificationsAccesWidget(onTap: () {}, value: true),
                Divider(height: 0),
                SettingsNavigateWidget(
                  title: context.locale.language,
                  onTap: ()=>context.pushNamed(Routes.language),
                  icon: Assets.icons.language,
                ),
                Divider(height: 0),
                SettingsNavigateWidget(
                  borderRadius:  AppUtils.kBorderRadiusBottom16,
                  title: context.locale.system,
                  onTap: ()=>context.pushNamed(Routes.theme),
                  icon: Assets.icons.roller,
                ),
              ],
            ),
          ),
        ).paddingOnly(top: 8),
      ],
    ).paddingSymmetric(horizontal: 16),
  );
}

import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/extensions/padding_extensions.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/profile/presentation/pages/parofile_page/profile_mixin.dart';
import 'package:expense_pro/features/profile/presentation/pages/parofile_page/widgets/profile_navigate_widget.dart';
import 'package:expense_pro/features/profile/presentation/pages/parofile_page/widgets/user_image_widget.dart';
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
    appBar: CustomAppBar(
      leadingVisible: false,
      title: context.locale.profile,
      actions: IconButton(onPressed: () {}, icon: Assets.icons.logOut.svg()),
    ),
    body: SingleChildScrollView(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UserImageWidget(),
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
                    title: context.locale.userInformation,
                    onTap: () {
                      context.pushNamed(Routes.userInfo);
                    },
                    icon: Assets.icons.person,
                  ),

                  Divider(height: 0),
                  ProfileNavigateWidget(
                    title: context.locale.subscription,
                    onTap: () {
                      context.pushNamed(Routes.subscription);
                    },
                    icon: Assets.icons.subscription,
                  ),
                  Divider(height: 0),
                  ProfileNavigateWidget(
                    title: context.locale.settings,
                    onTap: () {
                      context.pushNamed(Routes.settings);
                    },
                    icon: Assets.icons.settings,
                  ),
                  Divider(height: 0),
                  ProfileNavigateWidget(
                    title: context.locale.habits,
                    onTap: () {
                      context.pushNamed(Routes.habits);
                    },
                    icon: Assets.icons.idea,
                  ),
                  Divider(height: 0),
                  ProfileNavigateWidget(
                    title: context.locale.achivments,
                    onTap: () {
                      context.pushNamed(Routes.achievements);
                    },
                    icon: Assets.icons.achivments,
                  ),
                  Divider(height: 0),
                  ProfileNavigateWidget(
                    title: context.locale.notifications,
                    onTap: () {
                      context.pushNamed(Routes.notifications);
                    },
                    icon: Assets.icons.notification,
                  ),
                  Divider(height: 0),
                  ProfileNavigateWidget(
                    borderRadius: AppUtils.kBorderRadiusBottom16,
                    title: context.locale.aboutApplication,
                    onTap: () {
                      context.pushNamed(Routes.aboutApplication);
                    },
                    icon: Assets.icons.info,
                  ),
                ],
              ),
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: 16),
    ),
  );
}

import 'package:expense_pro/core/common/custom_ink_widget.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/extensions/padding_extensions.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/l10n/assets/assets.gen.dart';
import 'package:flutter/material.dart';


class ProfileNavigateWidget extends StatelessWidget {
  const ProfileNavigateWidget({
    super.key,
    this.borderRadius = BorderRadius.zero,
    required this.title,
    required this.onTap,
    this.icon = "",
    this.color,
    this.icons,
  });
  final BorderRadius borderRadius;
  final String title;
  final VoidCallback onTap;
  final String icon;
  final Color? color;
  final IconData? icons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: AppUtils.kBorderRadius16,
          color: context.colorScheme.surface,
        ),
        child: CustomInkWidget(
          onTap: onTap,
          borderRadius: AppUtils.kBorderRadius16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 12,
                children: [
                  /* if (icons == null && icon.isNotEmpty)
                    SvgPicture.asset(
                      icon,
                      colorFilter: ColorFilter.mode(itemColor, BlendMode.srcIn),
                      width: 24,
                      height: 24,
                    )
                  else if (icons != null)
                    Icon(icons, color: itemColor, size: 24),*/
                  Text(title, style: context.textStyle.manrope16w500),
                ],
              ),
              IconButton(onPressed: onTap, icon: Assets.icons.chevronRight.svg()),
            ],
          ).paddingOnly(left: 16, top: 4, bottom: 4),
        ),
      ),
    );
  }
}

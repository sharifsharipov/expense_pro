import 'package:expense_pro/core/common/custom_ink_widget.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/extensions/padding_extensions.dart';
import 'package:expense_pro/l10n/assets/assets.gen.dart';
import 'package:flutter/material.dart';

class SettingsNavigateWidget extends StatelessWidget {
  const SettingsNavigateWidget({
    super.key,
    this.borderRadius = BorderRadius.zero,
    required this.title,
    required this.onTap,
    required this.icon,
    this.color,
  });
  final BorderRadius borderRadius;
  final String title;
  final VoidCallback onTap;
  final SvgGenImage icon;
  final Color? color;

  @override
  Widget build(BuildContext context) => CustomInkWidget(
    onTap: onTap,
    borderRadius: borderRadius,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 12,
          children: [
            icon.svg(
              colorFilter: ColorFilter.mode(
                context.isDarkMode ? Colors.white : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            Text(title, style: context.textStyle.manrope16w500),
          ],
        ),
        GestureDetector(
          onTap: onTap,
          child: Assets.icons.chevronRight.svg(
            colorFilter: ColorFilter.mode(
              context.isDarkMode ? Colors.white : Colors.black,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    ).paddingSymmetric(horizontal: 12, vertical: 10),
  );
}

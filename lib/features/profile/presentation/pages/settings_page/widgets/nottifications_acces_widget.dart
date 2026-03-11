import 'package:expense_pro/core/common/custom_ink_widget.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/extensions/padding_extensions.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/l10n/assets/assets.gen.dart';
import 'package:flutter/cupertino.dart';

class NottificationsAccesWidget extends StatelessWidget {
  final VoidCallback onTap;
  final bool value;
  const NottificationsAccesWidget({
    super.key,
    required this.onTap,
    required this.value,
  });

  @override
  Widget build(BuildContext context) => CustomInkWidget(
    onTap: onTap,
    borderRadius:  AppUtils.kBorderRadiusTop16,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            spacing: 12,
            children: [
              Assets.icons.notification.svg(),
            
              Text(
                context.locale.notifications,
                style: context.textStyle.manrope16w500,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
          child: CupertinoSwitch(
            value: value,
            onChanged: (v) => onTap(),
            activeTrackColor: CupertinoColors.activeBlue,
          ),
        ),
      ],
    ).paddingSymmetric(horizontal: 12, vertical: 10),
  );
}

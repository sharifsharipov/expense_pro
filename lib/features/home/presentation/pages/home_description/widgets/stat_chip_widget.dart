import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:flutter/material.dart';

class StatChip extends StatelessWidget {
  const StatChip({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: AppUtils.kBorderRadius48,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: Colors.white),
          AppUtils.kGap4,
          Text(
            label,
            style: context.textStyle.manrope12w400.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/home/presentation/home_mock_data.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transaction});

  final HomeTransaction transaction;

  @override
  Widget build(BuildContext context) {
    final t = transaction;
    return Container(
      padding: AppUtils.kPaddingHor16Ver12,
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerHighest,
        borderRadius: AppUtils.kBorderRadius16,
        border: Border.all(color: context.colorScheme.outline),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: t.color.withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(t.icon, color: t.color, size: 20),
          ),
          AppUtils.kGap12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(t.title, style: context.textStyle.manrope14w400),
                AppUtils.kGap2,
                Text(t.date, style: context.textStyle.manrope12w400grey),
              ],
            ),
          ),
          Text(
            '${t.isIncome ? '+' : '-'}\$${t.amount.toStringAsFixed(0)}',
            style: context.textStyle.manrope16w500.copyWith(
              color: t.isIncome
                  ? const Color(0xFF0CB867)
                  : context.colorScheme.error,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/home/presentation/home_mock_data.dart';
import 'package:flutter/material.dart';

class DescSpendingBreakdown extends StatelessWidget {
  const DescSpendingBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppUtils.kPaddingAll16,
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerHighest,
        borderRadius: AppUtils.kBorderRadius16,
        border: Border.all(color: context.colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Kategoriya bo'yicha", style: context.textStyle.manrope16w500),
          AppUtils.kGap12,
          ...spendingCategories.map(
            (c) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: c.color,
                              shape: BoxShape.circle,
                            ),
                          ),
                          AppUtils.kGap8,
                          Text(c.name, style: context.textStyle.manrope14w400),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '${(c.percent * 100).toStringAsFixed(0)}%',
                            style: context.textStyle.manrope12w400grey,
                          ),
                          AppUtils.kGap8,
                          Text(
                            '\$${c.amount.toStringAsFixed(0)}',
                            style: context.textStyle.manrope14w400.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  AppUtils.kGap6,
                  ClipRRect(
                    borderRadius: AppUtils.kBorderRadius48,
                    child: LinearProgressIndicator(
                      value: c.percent,
                      minHeight: 6,
                      backgroundColor: c.color.withValues(alpha: 0.15),
                      valueColor: AlwaysStoppedAnimation<Color>(c.color),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

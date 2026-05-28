import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/home/presentation/home_mock_data.dart';
import 'package:flutter/material.dart';

class HomeCategoryBreakdown extends StatelessWidget {
  const HomeCategoryBreakdown({super.key});

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
        children: spendingCategories
            .map((c) => _CategoryRow(category: c))
            .toList(),
      ),
    );
  }
}

class _CategoryRow extends StatelessWidget {
  const _CategoryRow({required this.category});

  final HomeSpendingCategory category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
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
                      color: category.color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  AppUtils.kGap8,
                  Text(category.name, style: context.textStyle.manrope14w400),
                ],
              ),
              Text(
                '\$${category.amount.toStringAsFixed(0)}',
                style: context.textStyle.manrope14w400,
              ),
            ],
          ),
          AppUtils.kGap6,
          ClipRRect(
            borderRadius: AppUtils.kBorderRadius48,
            child: LinearProgressIndicator(
              value: category.percent,
              minHeight: 6,
              backgroundColor: category.color.withValues(alpha: 0.15),
              valueColor: AlwaysStoppedAnimation<Color>(category.color),
            ),
          ),
        ],
      ),
    );
  }
}

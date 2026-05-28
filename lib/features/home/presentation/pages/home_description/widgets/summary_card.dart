import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/home/presentation/home_mock_data.dart';
import 'package:expense_pro/features/home/presentation/pages/home_description/widgets/stat_chip_widget.dart';
import 'package:flutter/material.dart';

class DescCategorySummaryCard extends StatelessWidget {
  const DescCategorySummaryCard({
    super.key,
    required this.category,
    required this.transactions,
    required this.totalExpense,
  });

  final HomeChartCategory category;
  final List<HomeTransaction> transactions;
  final double totalExpense;

  @override
  Widget build(BuildContext context) {
    final isAll = category.label == 'Barchasi';
    final amount = isAll
        ? totalExpense
        : transactions.fold(0.0, (sum, t) => sum + (t.isIncome ? 0 : t.amount));
    final count = isAll
        ? transactions.where((t) => !t.isIncome).length
        : transactions.length;
    final percent = totalExpense > 0 ? (amount / totalExpense) : 0.0;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [category.color, category.color.withValues(alpha: 0.7)],
        ),
        borderRadius: AppUtils.kBorderRadius24,
        boxShadow: [
          BoxShadow(
            color: category.color.withValues(alpha: 0.3),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category.label,
            style: context.textStyle.manrope14w400.copyWith(
              color: Colors.white.withValues(alpha: 0.85),
            ),
          ),
          AppUtils.kGap4,
          Text(
            '\$${amount.toStringAsFixed(0)}',
            style: context.textStyle.poppins24w700.copyWith(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          AppUtils.kGap16,
          Row(
            children: [
              StatChip(
                label: '$count ta tranzaksiya',
                icon: Icons.receipt_long_rounded,
              ),
              if (!isAll) ...[
                AppUtils.kGap8,
                StatChip(
                  label: '${(percent * 100).toStringAsFixed(0)}% umumiydan',
                  icon: Icons.pie_chart_rounded,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}



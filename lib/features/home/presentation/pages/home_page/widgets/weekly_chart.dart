import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/themes/app_color.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/home/presentation/home_mock_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeWeeklyChart extends StatefulWidget {
  const HomeWeeklyChart({super.key});

  @override
  State<HomeWeeklyChart> createState() => _HomeWeeklyChartState();
}

class _HomeWeeklyChartState extends State<HomeWeeklyChart> {
  bool _showExpense = true;

  @override
  Widget build(BuildContext context) {
    final selected = chartCategories[0];
    final income = AppColor.success;
    final activeColor = _showExpense ? selected.color : income;
    final data = _showExpense ? selected.weeklyData : weeklyIncomes;
    final maxY = (data.reduce((a, b) => a > b ? a : b) * 1.3).ceilToDouble();

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Haftalik statistika', style: context.textStyle.manrope16w500),
              Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.outline.withValues(alpha: 0.4),
                  borderRadius: AppUtils.kBorderRadius48,
                ),
                padding: const EdgeInsets.all(3),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _ChartTab(
                      label: 'Chiqim',
                      active: _showExpense,
                      color: selected.color,
                      onTap: () => setState(() => _showExpense = true),
                    ),
                    _ChartTab(
                      label: 'Kirim',
                      active: !_showExpense,
                      color: income,
                      onTap: () => setState(() => _showExpense = false),
                    ),
                  ],
                ),
              ),
            ],
          ),
          AppUtils.kGap16,
          SizedBox(
            height: 180,
            child: BarChart(
              BarChartData(
                maxY: maxY,
                minY: 0,
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: maxY / 4,
                  getDrawingHorizontalLine: (_) => FlLine(
                    color: context.colorScheme.outline,
                    strokeWidth: 1,
                    dashArray: [4, 4],
                  ),
                ),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 28,
                      getTitlesWidget: (value, meta) {
                        final i = value.toInt();
                        if (i < 0 || i >= weekDays.length) return const SizedBox.shrink();
                        return Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(weekDays[i], style: context.textStyle.manrope12w400grey),
                        );
                      },
                    ),
                  ),
                ),
                barGroups: List.generate(7, (i) {
                  final value = data[i];
                  return BarChartGroupData(
                    x: i,
                    barRods: [
                      BarChartRodData(
                        toY: value,
                        width: 20,
                        borderRadius: AppUtils.kBorderRadius8,
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            activeColor.withValues(alpha: 0.5),
                            activeColor,
                          ],
                        ),
                        backDrawRodData: BackgroundBarChartRodData(
                          show: true,
                          toY: maxY,
                          color: activeColor.withValues(alpha: 0.07),
                        ),
                      ),
                    ],
                  );
                }),
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: (_) => context.colorScheme.surfaceContainerHighest,
                    tooltipRoundedRadius: 8,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) => BarTooltipItem(
                      '\$${rod.toY.toStringAsFixed(0)}',
                      context.textStyle.manrope12w400.copyWith(
                        color: activeColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            ),
          ),
        ],
      ),
    );
  }
}

class _ChartTab extends StatelessWidget {
  const _ChartTab({
    required this.label,
    required this.active,
    required this.color,
    required this.onTap,
  });

  final String label;
  final bool active;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          color: active ? color : Colors.transparent,
          borderRadius: AppUtils.kBorderRadius48,
        ),
        child: Text(
          label,
          style: context.textStyle.manrope12w400.copyWith(
            color: active ? Colors.white : context.textStyle.manrope12w400grey.color,
            fontWeight: active ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

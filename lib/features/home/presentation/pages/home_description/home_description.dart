import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/home/presentation/home_mock_data.dart';
import 'package:expense_pro/features/home/presentation/pages/home_description/home_description_mixin.dart';
import 'package:expense_pro/features/home/presentation/pages/home_description/widgets/spending_breakdown.dart';
import 'package:expense_pro/features/home/presentation/pages/home_description/widgets/summary_card.dart';
import 'package:expense_pro/features/home/presentation/pages/home_description/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class HomeDescription extends StatefulWidget {
  const HomeDescription({super.key, this.initialCategory});

  final String? initialCategory;

  @override
  State<HomeDescription> createState() => _HomeDescriptionState();
}

class _HomeDescriptionState extends State<HomeDescription> with HomeDescriptionMixin {
  late final HomeChartCategory _category;
  late final List<HomeTransaction> _filtered;
  late final double _totalExpense;

  @override
  void initState() {
    super.initState();
    final label = widget.initialCategory;
    final idx = label != null
        ? chartCategories.indexWhere((c) => c.label == label)
        : -1;
    _category = chartCategories[idx >= 0 ? idx : 0];

    _totalExpense = mockTransactions.fold(
      0.0,
      (sum, t) => sum + (t.isIncome ? 0 : t.amount),
    );

    _filtered = _category.label == 'Barchasi'
        ? mockTransactions
        : mockTransactions.where((t) => t.category == _category.label).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: _category.label),
      body: CustomScrollView(
        physics: AppUtils.kScrollPhysics,
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                DescCategorySummaryCard(
                  category: _category,
                  transactions: _filtered,
                  totalExpense: _totalExpense,
                ),
                AppUtils.kGap24,

                if (_category.label == 'Barchasi') ...[
                  const DescSpendingBreakdown(),
                  AppUtils.kGap24,
                ],

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tranzaksiyalar', style: context.textStyle.manrope16w500),
                    Text('${_filtered.length} ta', style: context.textStyle.manrope12w400grey),
                  ],
                ),
                AppUtils.kGap12,

                if (_filtered.isEmpty)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Center(child: Text('Tranzaksiya topilmadi')),
                  )
                else
                  ..._filtered.map(
                    (t) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: DescTransactionItem(transaction: t),
                    ),
                  ),
              ]),
            ),
          ),
          AppUtils.kSliverSafetyPadBottom,
        ],
      ),
    );
  }
}

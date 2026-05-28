import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/home/presentation/home_mock_data.dart';
import 'package:expense_pro/features/home/presentation/pages/home_page/widgets/category_chip_widget.dart';
import 'package:expense_pro/features/home/presentation/pages/home_page/widgets/trasnaction_item_widget.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeTransactionsSection extends StatefulWidget {
  const HomeTransactionsSection({super.key});

  @override
  State<HomeTransactionsSection> createState() => _HomeTransactionsSectionState();
}

class _HomeTransactionsSectionState extends State<HomeTransactionsSection> {
  int _selectedIndex = 0;

  List<HomeTransaction> get _filtered {
    if (_selectedIndex == 0) return mockTransactions;
    final label = chartCategories[_selectedIndex].label;
    return mockTransactions.where((t) => t.category == label).toList();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _filtered;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("So'nggi tranzaksiyalar", style: context.textStyle.manrope16w500),
            GestureDetector(
              onTap: () => context.pushNamed(Routes.homeDescription),
              child: Text('Barchasi', style: context.textStyle.manrope14w500primary),
            ),
          ],
        ),
        AppUtils.kGap12,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(chartCategories.length, (i) {
              final cat = chartCategories[i];
              return Padding(
                padding: EdgeInsets.only(
                  right: i < chartCategories.length - 1 ? 8 : 0,
                ),
                child: CategoryChip (
                  label: cat.label,
                  color: cat.color,
                  active: i == _selectedIndex,
                  onTap: () => setState(() => _selectedIndex = i),
                ),
              );
            }),
          ),
        ),
        AppUtils.kGap12,
        if (filtered.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Center(
              child: Text(
                'Tranzaksiya topilmadi',
                style: context.textStyle.manrope14w400.copyWith(
                  color: context.textStyle.manrope12w400grey.color,
                ),
              ),
            ),
          )
        else
          ...filtered.map(
            (t) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: GestureDetector(
                onTap: () => context.pushNamed(
                  Routes.homeDescription,
                  extra: t.category == 'Barchasi' ? 'Barchasi' : t.category,
                ),
                child:  TransactionItem (transaction: t),
              ),
            ),
          ),
      ],
    );
  }
}


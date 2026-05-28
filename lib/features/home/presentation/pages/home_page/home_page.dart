import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:expense_pro/features/home/presentation/pages/home_page/home_mixin.dart';
import 'package:expense_pro/features/home/presentation/pages/home_page/widgets/balance_card.dart';
import 'package:expense_pro/features/home/presentation/pages/home_page/widgets/category_breakdown.dart';
import 'package:expense_pro/features/home/presentation/pages/home_page/widgets/section_header.dart';
import 'package:expense_pro/features/home/presentation/pages/home_page/widgets/transactions_section.dart';
import 'package:expense_pro/features/home/presentation/pages/home_page/widgets/weekly_chart.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomeMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(
      leadingVisible: false,
      title: context.locale.home,
      actions: IconButton(
        onPressed: () => context.pushNamed(Routes.addExpense),
        icon: const Icon(Icons.add_rounded),
      ),
    ),
    body: CustomScrollView(
      physics: AppUtils.kScrollPhysics,
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const HomeBalanceCard(),
              AppUtils.kGap24,
              const HomeWeeklyChart(),
              AppUtils.kGap24,
              const HomeTransactionsSection(),
              AppUtils.kGap24,
              HomeSectionHeader(
                title: 'Xarajat kategoriyalari',
                actionLabel: null,
                onAction: null,
              ),
              AppUtils.kGap12,
              const HomeCategoryBreakdown(),
            ]),
          ),
        ),
        AppUtils.kSliverSafetyPadBottom,
      ],
    ),
  );
}

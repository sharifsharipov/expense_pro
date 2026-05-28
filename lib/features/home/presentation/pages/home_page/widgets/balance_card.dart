import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeBalanceCard extends StatelessWidget {
  const HomeBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            context.colorScheme.primary,
            context.colorScheme.primary.withValues(alpha: 0.75),
          ],
        ),
        borderRadius: AppUtils.kBorderRadius24,
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.primary.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Umumiy balans',
                style: context.textStyle.manrope14w400.copyWith(
                  color: Colors.white.withValues(alpha: 0.85),
                ),
              ),
              Container(
                padding: AppUtils.kPaddingHor10Ver4,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: AppUtils.kBorderRadius48,
                ),
                child: Text(
                  'May 2026',
                  style: context.textStyle.manrope12w400.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          AppUtils.kGap8,
          Text(
            '\$1,450.00',
            style: context.textStyle.poppins24w700.copyWith(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          AppUtils.kGap24,
          Row(
            children: [
              Expanded(
                child: _BalanceStat(
                  label: 'Kirim',
                  amount: '\$3,200',
                  icon: Icons.arrow_upward_rounded,
                  iconColor: const Color(0xFF0CB867),
                ),
              ),
              Container(
                width: 1,
                height: 40,
                color: Colors.white.withValues(alpha: 0.3),
              ),
              Expanded(
                child: _BalanceStat(
                  label: 'Chiqim',
                  amount: '\$1,750',
                  icon: Icons.arrow_downward_rounded,
                  iconColor: const Color(0xFFFF6B6B),
                  isRight: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BalanceStat extends StatelessWidget {
  const _BalanceStat({
    required this.label,
    required this.amount,
    required this.icon,
    required this.iconColor,
    this.isRight = false,
  });

  final String label;
  final String amount;
  final IconData icon;
  final Color iconColor;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: isRight ? 16 : 0, right: isRight ? 0 : 16),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor, size: 16),
          ),
          AppUtils.kGap8,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: context.textStyle.manrope12w400.copyWith(
                  color: Colors.white.withValues(alpha: 0.75),
                ),
              ),
              Text(
                amount,
                style: context.textStyle.manrope16w500.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

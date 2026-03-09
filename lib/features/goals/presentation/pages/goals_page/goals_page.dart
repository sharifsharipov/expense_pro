//goalsni edit qilish va delete qilish funksiyalarini qo'shish kerak  bunga show modal bottom sheetdan foydalanish kerak
/*🎯 5. Maqsadlar va Jamg'arma (Goals Module)

GoalsListPage: Barcha yig'ilayotgan mablag'lar ro'yxati (Noutbuk, Sayohat, Avtomobil).

AddGoalPage: Yangi maqsad yaratish (Nomi, kerakli summa va maqsad qilingan muddat).

GoalForecastDetailsPage: Biz yuqorida gaplashgan eng qiziqarli sahifa. Bu yerda maqsadning progressi, hozirgacha yig'ilgan summa va o'rtacha tejash tempingizga qarab "Siz bu maqsadga yana 3 oyda yetasiz" degan prognoz (ETA) va vizual ma'lumotlar ko'rsatiladi. Xuddi shu sahifadan maqsad uchun to'g'ridan-to'g'ri pul ajratish tugmasi ham joy oladi.*/
import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/features/goals/presentation/pages/goals_page/goals_mixin.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> with GoalsMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(
      leadingVisible: false,
      title: context.locale.goals,
      actions: IconButton(
        onPressed: () => context.pushNamed(Routes.goalsDescription),
        icon: Icon(Icons.add),
      ),
    ),
  );
}

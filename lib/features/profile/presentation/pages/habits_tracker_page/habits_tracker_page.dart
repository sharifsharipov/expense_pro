/*3. Odatlar Trekeri (Habits Tracker Page)

Nima u: Kunlik vazifalardan (Tasks) farqli o'laroq, bu yerda davomiy odatlar belgilanadi. Masalan: "Kuniga 2 soat kod yozish", "Fast-food yemaslik", "Kitob o'qish".

Nima uchun kerak: Foydalanuvchi kalendar ko'rinishida qaysi kunlari odatini bajarganini zanjir (streak) qilib ko'rib boradi. Agar "Fast-food yemaslik" odatini bajarsa, o'sha kuni xarajatlari kamayganini vizual tarzda solishtirib ko'rishi mumkin.*/
import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/profile/presentation/pages/habits_tracker_page/habits_tracker_mixin.dart';
import 'package:flutter/material.dart';

class HabitsTrackerPage extends StatefulWidget {
  const HabitsTrackerPage({super.key});

  @override
  State<HabitsTrackerPage> createState() => _HabitsTrackerPageState();
}

class _HabitsTrackerPageState extends State<HabitsTrackerPage>
    with HabitsTrackerMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(title: 'Habits Tracker'),
    body: Center(
      child: Text('Habits Tracker'),
    ),
  );
}

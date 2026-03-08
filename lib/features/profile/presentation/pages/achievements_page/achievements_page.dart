/*🏆 5. Yutuqlar va Motivatsiya (Achievements/Badges Page)

Nima u: Foydalanuvchining yaxshi natijalari uchun beriladigan virtual nishonlar (badges).

Nima uchun kerak: Gamifikatsiya (o'yinlashtirish). "Ketma-ket 7 kun limitdan chiqmadik", "Birinchi maqsadga erishildi!" yoki "Barcha tasklar 100% bajarildi" kabi yutuqlar odamni ilovadan har kuni zerikmasdan foydalanishiga undaydi.*/
import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/profile/presentation/pages/achievements_page/achievements_mixin.dart';
import 'package:flutter/material.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key});

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage>
    with AchievementsMixin {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: CustomAppBar(title: 'Achievements'));
}

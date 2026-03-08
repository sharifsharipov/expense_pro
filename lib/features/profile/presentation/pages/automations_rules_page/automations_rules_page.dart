/*🔗 2. Avtomatlashtirish qoidalari (Automations & Rules Page)

Nima u: Moliya va unumdorlikni bir-biriga bog'lovchi "If-This-Then-That" (Agar bu bo'lsa, unda buni qil) mantig'idagi qoidalar yaratish sahifasi.

Nima uchun kerak: Masalan, foydalanuvchi shunday qoida tuzishi mumkin: "Agar bugungi hamma 'High Priority' tasklarimni bajarsam, 'MacBook' maqsadimga virtual 50,000 so'm qo'shilsin" yoki "Har oyning 1-sanasida tushgan daromadimning 10% ini avtomatik 'Sayohat' maqsadiga o'tkaz". Bu ilovaga juda kuchli logikani olib kiradi.*/
import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/profile/presentation/pages/automations_rules_page/automations_rules_mixin.dart';
import 'package:flutter/material.dart';

class AutomationsRulesPage extends StatefulWidget {
  const AutomationsRulesPage({super.key});

  @override
  State<AutomationsRulesPage> createState() => _AutomationsRulesPageState();
}

class _AutomationsRulesPageState extends State<AutomationsRulesPage>
    with AutomationsRulesMixin {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: CustomAppBar(title: 'Automations Rules'));
}

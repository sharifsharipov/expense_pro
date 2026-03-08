/*🔄 1. Obunalar va Doimiy To'lovlar (Subscriptions Page)

Nima u: Har oy avtomatik yechiladigan to'lovlar (Internet, Kommunal, Spotify, Netflix, kurs to'lovlari yoki server/domen xarajatlari) ro'yxati.

Nima uchun kerak: Odamlar ko'pincha qayerga obuna bo'lganini unutib qo'yadi. Bu sahifa "Ertaga hisobingizdan 50,000 so'm yechiladi" deb oldindan ogohlantiradi (Push Notification). Bu moliyaviy nazoratni avtomatlashtirish uchun juda muhim.*/
import 'package:expense_pro/core/common/custom_app_bar.dart';
import 'package:expense_pro/features/profile/presentation/pages/subscriptions_page/subscriptions_mixin.dart';
import 'package:flutter/material.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage>
    with SubscriptionsMixin {
  @override
  Widget build(BuildContext context)=> Scaffold(
    appBar: CustomAppBar(title: 'Subscriptions'),
    body: const Center(child: Text('Subscriptions')),
  );
}

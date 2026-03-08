import 'package:expense_pro/features/profile/presentation/pages/notifications_page/notifications_mixin.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage>
    with NotificationsMixin {
  @override
  Widget build(BuildContext context) {
    return Container(child: null);
  }
}

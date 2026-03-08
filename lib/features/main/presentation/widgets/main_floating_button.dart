import 'package:expense_pro/core/extensions/padding_extensions.dart';
import 'package:expense_pro/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainFloatingButton extends StatelessWidget {
  const MainFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(
        bottom: MediaQuery.viewPaddingOf(context).bottom + 16,
      ),
      child: SizedBox(
        width: 56,
        height: 56,
        child: FloatingActionButton(
          onPressed: () =>context.pushNamed(Routes.addExpense),
          elevation: 2,
          backgroundColor: const Color.fromARGB(246, 241, 193, 20),
          shape: const CircleBorder(),
          child: const Icon(Icons.add, size: 32),
        ),
      ),
    ).paddingOnly(bottom: 10);
  }
}

import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/features/main/presentation/pages/main_mixin.dart';
import 'package:expense_pro/features/main/presentation/widgets/main_floating_button.dart';
import 'package:expense_pro/l10n/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with MainMixin {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: widget.navigationShell.currentIndex == 0,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (didPop) return;
        widget.navigationShell.goBranch(0);
      },

      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            extendBody: true,
            body: widget.navigationShell,
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: widget.navigationShell.currentIndex >= 2
                  ? widget.navigationShell.currentIndex + 1
                  : widget.navigationShell.currentIndex,
              selectedItemColor:const Color.fromARGB(246, 241, 193, 20),
              unselectedItemColor:
                  context.theme.bottomNavigationBarTheme.unselectedItemColor,
              onTap: (int index) {
                if (index == 2) return;
                int targetIndex = index > 2 ? index - 1 : index;
                changeTap(targetIndex, context);
              },
              items: [
                BottomNavigationBarItem(
                  activeIcon: Assets.icons.home.svg(
                    colorFilter: selectedItemColorFilter,
                  ),
                  icon: Assets.icons.home.svg(
                    colorFilter: unselectedItemColorFilter,
                  ),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  activeIcon: Assets.icons.finance.svg(
                    colorFilter: selectedItemColorFilter,
                  ),
                  icon: Assets.icons.finance.svg(
                    colorFilter: unselectedItemColorFilter,
                  ),
                  label: 'finanse',
                ),
                const BottomNavigationBarItem(
                  icon: SizedBox(width: 48, height: 24),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Assets.icons.goals.svg(
                    colorFilter: selectedItemColorFilter,
                  ),
                  icon: Assets.icons.goals.svg(
                    colorFilter: unselectedItemColorFilter,
                  ),
                  label: 'goals',
                ),
                BottomNavigationBarItem(
                  activeIcon: Assets.icons.person.svg(
                    colorFilter: selectedItemColorFilter,
                  ),
                  icon: Assets.icons.person.svg(
                    colorFilter: unselectedItemColorFilter,
                  ),
                  label: 'profile',
                ),
              ],
            ),
          ),
          MainFloatingButton(),
        ],
      ),
    );
  }
}

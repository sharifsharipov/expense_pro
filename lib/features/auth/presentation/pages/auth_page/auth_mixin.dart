import 'package:expense_pro/features/auth/presentation/pages/auth_page/auth_page.dart';
import 'package:flutter/material.dart';

mixin AuthMixin on State<AuthPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneNumberController;
  late TextEditingController genderController;
  late FocusNode emailFocusNode;
  late FocusNode passwordFocusNode;
  late FocusNode phoneNumberFocusNode;
  late FocusNode genderFocusNode;
  void initControllers() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneNumberController = TextEditingController();
    genderController = TextEditingController();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    phoneNumberFocusNode = FocusNode();
    genderFocusNode = FocusNode();
  }

  @override
  void initState() {
    super.initState();
    initControllers();
  }

  void disposControllers() {
    emailController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
    genderController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    phoneNumberFocusNode.dispose();
    genderFocusNode.dispose();
  }

  @override
  void dispose() {
    disposControllers();
    super.dispose();
  }
}

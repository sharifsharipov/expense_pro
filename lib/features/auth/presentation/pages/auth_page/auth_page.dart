import 'package:expense_pro/core/common/custom_text_field.dart';
import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:expense_pro/features/auth/presentation/pages/auth_page/auth_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with AuthMixin {
  @override
  Widget build(BuildContext context) => BlocConsumer<AuthBloc, AuthState>(
    listenWhen: (previous, current) => previous != current,
    listener: (BuildContext context, AuthState state) {},
    builder: (context, state) => Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Auth", style: context.textStyle.manrope18w600),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewPadding.bottom,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextField(
                hintText: "Email",
                textInputType: TextInputType.text,
                textEditingController: emailController,
                focusNode: emailFocusNode,
                textInputAction: TextInputAction.next,
              ),
              CustomTextField(
                hintText: "Password",
                textInputType: TextInputType.text,
                textEditingController: passwordController,
                focusNode: passwordFocusNode,
                textInputAction: TextInputAction.next,
              ),
              CustomTextField(
                hintText: "Phone Number",
                textInputType: TextInputType.text,
                textEditingController: phoneNumberController,
                focusNode: phoneNumberFocusNode,
                textInputAction: TextInputAction.next,
              ),
              CustomTextField(
                hintText: "Gender",
                textInputType: TextInputType.text,
                textEditingController: genderController,
                focusNode: genderFocusNode,
                textInputAction: TextInputAction.done,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

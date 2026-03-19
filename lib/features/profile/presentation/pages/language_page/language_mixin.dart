import 'package:expense_pro/core/extensions/build_context_extension.dart';
import 'package:expense_pro/core/models/app_options.dart';
import 'package:expense_pro/features/profile/presentation/pages/language_page/language_page.dart';
import 'package:flutter/material.dart';

mixin LanguageMixin on State<LanguagePage> {
  AppLanguage get selectedLanguage => context.options.language;

  void selectLanguage(AppLanguage language) {
    AppOptions.updateLanguage(context, language);
  }

}

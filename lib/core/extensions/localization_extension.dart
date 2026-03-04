import 'package:expense_pro/generated/l10n.dart';
import 'package:expense_pro/router/routes.dart' as routes;

S get localizationWithoutContext =>
    S.of(routes.rootNavigatorKey.currentContext!);

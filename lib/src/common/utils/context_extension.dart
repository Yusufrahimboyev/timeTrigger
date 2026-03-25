import 'package:flutter/material.dart';
import 'package:time_trigger/src/common/dependency/app_dependencies.dart';
import 'package:time_trigger/src/common/widgets/app_scope.dart';

import '../l10n/generated/l10n.dart';
import '../style/app_theme.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorExtension get colors =>
      Theme.of(this).extensions[ColorExtension] as ColorExtension;

  S get localized => S.of(this);

  AppDependencies get dependencies =>
      findAncestorStateOfType<AppScopeState>()?.appDependencies ??
      (throw FlutterError('Out of scope, not found state of type AppState'));
}

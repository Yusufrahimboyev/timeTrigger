import 'package:flutter/material.dart';
import 'package:time_trigger/src/common/dependency/app_dependencies.dart';
import 'package:time_trigger/src/common/widgets/app_scope.dart';

import '../l10n/generated/l10n.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colors => Theme.of(this).colorScheme;

  S get lang => S.of(this);

  AppDependencies get dependencies =>
      findAncestorStateOfType<AppScopeState>()?.appDependencies ??
      (throw FlutterError('Out of scope, not found state of type AppState'));
}

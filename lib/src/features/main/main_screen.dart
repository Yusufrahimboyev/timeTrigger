import 'package:flutter/material.dart';
import 'package:time_trigger/src/common/utils/context_extension.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.lang.appName,
          style: TextStyle(
            color: context.colors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

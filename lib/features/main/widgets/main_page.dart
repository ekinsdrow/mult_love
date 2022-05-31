import 'package:flutter/material.dart';
import 'package:mult_love/features/main/di/main_scope.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScope(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text('Main'),
          ),
        ),
      ),
    );
  }
}

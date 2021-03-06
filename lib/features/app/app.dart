import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mult_love/common/assets/themes/themes.dart';
import 'package:mult_love/features/app/di/app_scope.dart';
import 'package:mult_love/features/app/router/router.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _router = AppRouter();
  final _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return AppScope(
      dio: _dio,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: _router.defaultRouteParser(),
        routerDelegate: _router.delegate(),
        title: 'Mult.love',
        theme: Themes.darkTheme,
      ),
    );
  }
}

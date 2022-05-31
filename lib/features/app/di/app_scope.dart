import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppScope extends StatelessWidget {
  const AppScope({
    Key? key,
    required this.child,
    required this.dio,
  }) : super(key: key);

  final Widget child;
  final Dio dio;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => dio,
        ),
      ],
      child: child,
    );
  }
}

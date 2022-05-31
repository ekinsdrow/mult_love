import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mult_love/features/init/widgets/initial_page.dart';
import 'package:mult_love/features/main/widgets/main_page.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      name: 'InitialRoute',
      page: InitialPage,
    ),
    AutoRoute(
      name: 'MainRoute',
      page: MainPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

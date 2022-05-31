import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mult_love/features/init/widgets/initial_page.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/main/widgets/main_page.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/seasons/widgets/seasons_page.dart';
import 'package:mult_love/features/series/widgets/series_page.dart';

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
    AutoRoute(
      name: 'SeasonsRoute',
      page: SeasonsPage,
    ),
    AutoRoute(
      name: 'SeriesRoute',
      page: SeriesPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

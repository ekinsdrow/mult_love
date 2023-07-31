import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mult_love/features/calendar/widgets/calendar_screen.dart';
import 'package:mult_love/features/comics/widget/comics_screen.dart';
import 'package:mult_love/features/init/widgets/initial_page.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/main/widgets/main_page.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/seasons/widgets/seasons_page.dart';
import 'package:mult_love/features/series/widgets/series_page.dart';
import 'package:mult_love/features/specific_series/widgets/specific_series_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: InitialRoute.page,
        ),
        AutoRoute(
          page: MainRoute.page,
        ),
        AutoRoute(
          page: SeasonsRoute.page,
        ),
        AutoRoute(
          page: SeriesRoute.page,
        ),
        AutoRoute(
          page: SpecificSeriesRoute.page,
        ),
        AutoRoute(
          page: CalendarRoute.page,
        ),
        AutoRoute(
          page: ComicsRoute.page,
        ),
      ];
}

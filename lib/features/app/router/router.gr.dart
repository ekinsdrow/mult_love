// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SeriesRoute.name: (routeData) {
      final args = routeData.argsAs<SeriesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SeriesPage(
          key: args.key,
          season: args.season,
          serial: args.serial,
        ),
      );
    },
    InitialRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InitialPage(),
      );
    },
    ComicsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ComicsPage(),
      );
    },
    CalendarRoute.name: (routeData) {
      final args = routeData.argsAs<CalendarRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CalendarPage(
          key: args.key,
          serialLink: args.serialLink,
          serialTitle: args.serialTitle,
        ),
      );
    },
    SeasonsRoute.name: (routeData) {
      final args = routeData.argsAs<SeasonsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SeasonsPage(
          key: args.key,
          serial: args.serial,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    SpecificSeriesRoute.name: (routeData) {
      final args = routeData.argsAs<SpecificSeriesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SpecificSeriesPage(
          key: args.key,
          url: args.url,
        ),
      );
    },
  };
}

/// generated route for
/// [SeriesPage]
class SeriesRoute extends PageRouteInfo<SeriesRouteArgs> {
  SeriesRoute({
    Key? key,
    required Season season,
    required Serial serial,
    List<PageRouteInfo>? children,
  }) : super(
          SeriesRoute.name,
          args: SeriesRouteArgs(
            key: key,
            season: season,
            serial: serial,
          ),
          initialChildren: children,
        );

  static const String name = 'SeriesRoute';

  static const PageInfo<SeriesRouteArgs> page = PageInfo<SeriesRouteArgs>(name);
}

class SeriesRouteArgs {
  const SeriesRouteArgs({
    this.key,
    required this.season,
    required this.serial,
  });

  final Key? key;

  final Season season;

  final Serial serial;

  @override
  String toString() {
    return 'SeriesRouteArgs{key: $key, season: $season, serial: $serial}';
  }
}

/// generated route for
/// [InitialPage]
class InitialRoute extends PageRouteInfo<void> {
  const InitialRoute({List<PageRouteInfo>? children})
      : super(
          InitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ComicsPage]
class ComicsRoute extends PageRouteInfo<void> {
  const ComicsRoute({List<PageRouteInfo>? children})
      : super(
          ComicsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ComicsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CalendarPage]
class CalendarRoute extends PageRouteInfo<CalendarRouteArgs> {
  CalendarRoute({
    Key? key,
    required String serialLink,
    required String serialTitle,
    List<PageRouteInfo>? children,
  }) : super(
          CalendarRoute.name,
          args: CalendarRouteArgs(
            key: key,
            serialLink: serialLink,
            serialTitle: serialTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const PageInfo<CalendarRouteArgs> page =
      PageInfo<CalendarRouteArgs>(name);
}

class CalendarRouteArgs {
  const CalendarRouteArgs({
    this.key,
    required this.serialLink,
    required this.serialTitle,
  });

  final Key? key;

  final String serialLink;

  final String serialTitle;

  @override
  String toString() {
    return 'CalendarRouteArgs{key: $key, serialLink: $serialLink, serialTitle: $serialTitle}';
  }
}

/// generated route for
/// [SeasonsPage]
class SeasonsRoute extends PageRouteInfo<SeasonsRouteArgs> {
  SeasonsRoute({
    Key? key,
    required Serial serial,
    List<PageRouteInfo>? children,
  }) : super(
          SeasonsRoute.name,
          args: SeasonsRouteArgs(
            key: key,
            serial: serial,
          ),
          initialChildren: children,
        );

  static const String name = 'SeasonsRoute';

  static const PageInfo<SeasonsRouteArgs> page =
      PageInfo<SeasonsRouteArgs>(name);
}

class SeasonsRouteArgs {
  const SeasonsRouteArgs({
    this.key,
    required this.serial,
  });

  final Key? key;

  final Serial serial;

  @override
  String toString() {
    return 'SeasonsRouteArgs{key: $key, serial: $serial}';
  }
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpecificSeriesPage]
class SpecificSeriesRoute extends PageRouteInfo<SpecificSeriesRouteArgs> {
  SpecificSeriesRoute({
    Key? key,
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          SpecificSeriesRoute.name,
          args: SpecificSeriesRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'SpecificSeriesRoute';

  static const PageInfo<SpecificSeriesRouteArgs> page =
      PageInfo<SpecificSeriesRouteArgs>(name);
}

class SpecificSeriesRouteArgs {
  const SpecificSeriesRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'SpecificSeriesRouteArgs{key: $key, url: $url}';
  }
}

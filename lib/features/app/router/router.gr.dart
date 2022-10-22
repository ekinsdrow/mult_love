// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const InitialPage());
    },
    MainRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const MainPage());
    },
    SeasonsRoute.name: (routeData) {
      final args = routeData.argsAs<SeasonsRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: SeasonsPage(key: args.key, serial: args.serial));
    },
    SeriesRoute.name: (routeData) {
      final args = routeData.argsAs<SeriesRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: SeriesPage(
              key: args.key, season: args.season, serial: args.serial));
    },
    SpecificSeriesRoute.name: (routeData) {
      final args = routeData.argsAs<SpecificSeriesRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: SpecificSeriesPage(key: args.key, url: args.url));
    },
    CalndarRoute.name: (routeData) {
      final args = routeData.argsAs<CalndarRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: CalendarScreen(
              key: args.key,
              serialLink: args.serialLink,
              serialTitle: args.serialTitle));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(InitialRoute.name, path: '/'),
        RouteConfig(MainRoute.name, path: '/main-page'),
        RouteConfig(SeasonsRoute.name, path: '/seasons-page'),
        RouteConfig(SeriesRoute.name, path: '/series-page'),
        RouteConfig(SpecificSeriesRoute.name, path: '/specific-series-page'),
        RouteConfig(CalndarRoute.name, path: '/calendar-screen')
      ];
}

/// generated route for
/// [InitialPage]
class InitialRoute extends PageRouteInfo<void> {
  const InitialRoute() : super(InitialRoute.name, path: '/');

  static const String name = 'InitialRoute';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/main-page');

  static const String name = 'MainRoute';
}

/// generated route for
/// [SeasonsPage]
class SeasonsRoute extends PageRouteInfo<SeasonsRouteArgs> {
  SeasonsRoute({Key? key, required Serial serial})
      : super(SeasonsRoute.name,
            path: '/seasons-page',
            args: SeasonsRouteArgs(key: key, serial: serial));

  static const String name = 'SeasonsRoute';
}

class SeasonsRouteArgs {
  const SeasonsRouteArgs({this.key, required this.serial});

  final Key? key;

  final Serial serial;

  @override
  String toString() {
    return 'SeasonsRouteArgs{key: $key, serial: $serial}';
  }
}

/// generated route for
/// [SeriesPage]
class SeriesRoute extends PageRouteInfo<SeriesRouteArgs> {
  SeriesRoute({Key? key, required Season season, required Serial serial})
      : super(SeriesRoute.name,
            path: '/series-page',
            args: SeriesRouteArgs(key: key, season: season, serial: serial));

  static const String name = 'SeriesRoute';
}

class SeriesRouteArgs {
  const SeriesRouteArgs({this.key, required this.season, required this.serial});

  final Key? key;

  final Season season;

  final Serial serial;

  @override
  String toString() {
    return 'SeriesRouteArgs{key: $key, season: $season, serial: $serial}';
  }
}

/// generated route for
/// [SpecificSeriesPage]
class SpecificSeriesRoute extends PageRouteInfo<SpecificSeriesRouteArgs> {
  SpecificSeriesRoute({Key? key, required String url})
      : super(SpecificSeriesRoute.name,
            path: '/specific-series-page',
            args: SpecificSeriesRouteArgs(key: key, url: url));

  static const String name = 'SpecificSeriesRoute';
}

class SpecificSeriesRouteArgs {
  const SpecificSeriesRouteArgs({this.key, required this.url});

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'SpecificSeriesRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [CalendarScreen]
class CalndarRoute extends PageRouteInfo<CalndarRouteArgs> {
  CalndarRoute(
      {Key? key, required String serialLink, required String serialTitle})
      : super(CalndarRoute.name,
            path: '/calendar-screen',
            args: CalndarRouteArgs(
                key: key, serialLink: serialLink, serialTitle: serialTitle));

  static const String name = 'CalndarRoute';
}

class CalndarRouteArgs {
  const CalndarRouteArgs(
      {this.key, required this.serialLink, required this.serialTitle});

  final Key? key;

  final String serialLink;

  final String serialTitle;

  @override
  String toString() {
    return 'CalndarRouteArgs{key: $key, serialLink: $serialLink, serialTitle: $serialTitle}';
  }
}

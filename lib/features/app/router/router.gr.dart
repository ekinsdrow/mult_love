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
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(InitialRoute.name, path: '/'),
        RouteConfig(MainRoute.name, path: '/main-page'),
        RouteConfig(SeasonsRoute.name, path: '/seasons-page'),
        RouteConfig(SeriesRoute.name, path: '/series-page')
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

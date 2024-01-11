// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $hotelScreenRoute,
    ];

RouteBase get $hotelScreenRoute => GoRouteData.$route(
      path: '/hotel',
      factory: $HotelScreenRouteExtension._fromState,
    );

extension $HotelScreenRouteExtension on HotelScreenRoute {
  static HotelScreenRoute _fromState(GoRouterState state) =>
      const HotelScreenRoute();

  String get location => GoRouteData.$location(
        '/hotel',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

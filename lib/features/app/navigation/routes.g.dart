// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $hotelRoomsScreenRoute,
      $hotelScreenRoute,
    ];

RouteBase get $hotelRoomsScreenRoute => GoRouteData.$route(
      path: '/hotel/:id',
      factory: $HotelRoomsScreenRouteExtension._fromState,
    );

extension $HotelRoomsScreenRouteExtension on HotelRoomsScreenRoute {
  static HotelRoomsScreenRoute _fromState(GoRouterState state) =>
      HotelRoomsScreenRoute(
        id: int.parse(state.pathParameters['id']!),
        hotelName: state.uri.queryParameters['hotel-name']!,
      );

  String get location => GoRouteData.$location(
        '/hotel/${Uri.encodeComponent(id.toString())}',
        queryParams: {
          'hotel-name': hotelName,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

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

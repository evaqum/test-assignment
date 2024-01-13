// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $hotelRoomsScreenRoute,
      $hotelScreenRoute,
      $roomBookScreenRoute,
      $roomBookedScreenRoute,
    ];

RouteBase get $hotelRoomsScreenRoute => GoRouteData.$route(
      path: '/hotel/rooms',
      factory: $HotelRoomsScreenRouteExtension._fromState,
    );

extension $HotelRoomsScreenRouteExtension on HotelRoomsScreenRoute {
  static HotelRoomsScreenRoute _fromState(GoRouterState state) =>
      HotelRoomsScreenRoute(
        $extra: state.extra as HotelModel,
      );

  String get location => GoRouteData.$location(
        '/hotel/rooms',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
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

RouteBase get $roomBookScreenRoute => GoRouteData.$route(
      path: '/hotel/rooms/book',
      factory: $RoomBookScreenRouteExtension._fromState,
    );

extension $RoomBookScreenRouteExtension on RoomBookScreenRoute {
  static RoomBookScreenRoute _fromState(GoRouterState state) =>
      RoomBookScreenRoute(
        $extra: state.extra as ({HotelModel hotel, HotelRoomModel room}),
      );

  String get location => GoRouteData.$location(
        '/hotel/rooms/book',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $roomBookedScreenRoute => GoRouteData.$route(
      path: '/hotel/rooms/book/success',
      factory: $RoomBookedScreenRouteExtension._fromState,
    );

extension $RoomBookedScreenRouteExtension on RoomBookedScreenRoute {
  static RoomBookedScreenRoute _fromState(GoRouterState state) =>
      RoomBookedScreenRoute(
        orderId: state.uri.queryParameters['order-id']!,
      );

  String get location => GoRouteData.$location(
        '/hotel/rooms/book/success',
        queryParams: {
          'order-id': orderId,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

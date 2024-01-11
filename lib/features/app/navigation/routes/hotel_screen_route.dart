part of '../routes.dart';

@TypedGoRoute<HotelScreenRoute>(path: '/hotel')
class HotelScreenRoute extends GoRouteData {
  const HotelScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HotelScreen();
  }
}

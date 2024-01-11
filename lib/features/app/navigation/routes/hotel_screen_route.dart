part of '../routes.dart';

@TypedGoRoute<HotelScreenRoute>(path: '/hotel')
class HotelScreenRoute extends GoRouteData {
  const HotelScreenRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const CupertinoPage(
      child: HotelScreen(),
    );
  }
}

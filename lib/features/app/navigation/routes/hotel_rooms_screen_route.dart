part of '../routes.dart';

@TypedGoRoute<HotelRoomsScreenRoute>(path: '/hotel/rooms')
class HotelRoomsScreenRoute extends GoRouteData {
  final HotelModel $extra;

  const HotelRoomsScreenRoute({required this.$extra});

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      child: HotelRoomsScreen(
        hotel: $extra,
      ),
    );
  }
}

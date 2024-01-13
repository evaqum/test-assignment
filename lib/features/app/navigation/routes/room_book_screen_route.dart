part of '../routes.dart';

@TypedGoRoute<RoomBookScreenRoute>(path: '/hotel/rooms/book')
class RoomBookScreenRoute extends GoRouteData {
  final ({
    HotelModel hotel,
    HotelRoomModel room,
  }) $extra;

  const RoomBookScreenRoute({required this.$extra});

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      child: RoomBookScreen(
        hotel: $extra.hotel,
        room: $extra.room,
      ),
    );
  }
}

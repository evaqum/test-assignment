part of '../routes.dart';

@TypedGoRoute<HotelRoomsScreenRoute>(path: '/hotel/:id')
class HotelRoomsScreenRoute extends GoRouteData {
  final int id;
  final String hotelName;

  const HotelRoomsScreenRoute({
    required this.id,
    required this.hotelName,
  });

  HotelRoomsScreenRoute.fromModel({required HotelModel hotel})
      : id = hotel.id,
        hotelName = hotel.name;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      child: HotelRoomsScreen(
        hotelId: id,
        hotelName: hotelName,
      ),
    );
  }
}

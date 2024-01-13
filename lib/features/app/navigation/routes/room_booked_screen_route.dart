part of '../routes.dart';

@TypedGoRoute<RoomBookedScreenRoute>(path: '/hotel/rooms/book/success')
class RoomBookedScreenRoute extends GoRouteData {
  final String orderId;

  const RoomBookedScreenRoute({
    required this.orderId,
  });

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      child: RoomBookedScreen(orderId: orderId),
    );
  }
}

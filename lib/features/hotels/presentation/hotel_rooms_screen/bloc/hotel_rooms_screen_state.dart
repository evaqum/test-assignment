part of 'hotel_rooms_screen_bloc.dart';

@freezed
sealed class HotelRoomsScreenState with _$HotelRoomsScreenState {
  const factory HotelRoomsScreenState.loading() = HotelRoomsScreenStateLoading;
  const factory HotelRoomsScreenState.hotelRoomsFetched({
    required List<HotelRoomModel> rooms,
  }) = HotelRoomsScreenStateFetched;
  const factory HotelRoomsScreenState.hotelRoomsFetchFailed() = HotelRoomsScreenStateFetchFailed;
}

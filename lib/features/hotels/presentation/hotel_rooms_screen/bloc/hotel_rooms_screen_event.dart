part of 'hotel_rooms_screen_bloc.dart';

@freezed
class HotelRoomsScreenEvent with _$HotelRoomsScreenEvent {
  const factory HotelRoomsScreenEvent.roomsFetchRequested() = _RoomsFetchRequested;
}

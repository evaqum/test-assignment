part of 'hotel_screen_bloc.dart';

@freezed
class HotelScreenEvent with _$HotelScreenEvent {
  const factory HotelScreenEvent.hotelFetchRequested() = _HotelFetchRequested;
}

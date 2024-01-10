part of 'hotel_screen_bloc.dart';

@freezed
class HotelScreenState with _$HotelScreenState {
  const factory HotelScreenState.initial() = _Initial;
  const factory HotelScreenState.hotelFetched({
    required HotelModel hotel,
  }) = _HotelFetched;
  const factory HotelScreenState.hotelFetchFailed() = _HotelFetchFailed;
}

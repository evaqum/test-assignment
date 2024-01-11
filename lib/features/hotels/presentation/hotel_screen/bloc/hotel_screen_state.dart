part of 'hotel_screen_bloc.dart';

@freezed
sealed class HotelScreenState with _$HotelScreenState {
  const factory HotelScreenState.loading() = HotelScreenStateLoading;
  const factory HotelScreenState.hotelFetched({
    required HotelModel hotel,
  }) = HotelScreenStateFetched;
  const factory HotelScreenState.hotelFetchFailed() = HotelScreenStateFetchFailed;
}

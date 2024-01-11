import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/hotel_model.dart';
import '../../../domain/repositories/hotels_repository.dart';

part 'hotel_screen_bloc.freezed.dart';
part 'hotel_screen_event.dart';
part 'hotel_screen_state.dart';

class HotelScreenBloc extends Bloc<HotelScreenEvent, HotelScreenState> {
  final HotelsRepository hotelsRepository;

  HotelScreenBloc({
    required this.hotelsRepository,
  }) : super(const HotelScreenState.loading()) {
    on(_handleHotelFetchRequested);
  }

  void _handleHotelFetchRequested(
    _HotelFetchRequested event,
    Emitter<HotelScreenState> emit,
  ) async {
    try {
      final hotel = await hotelsRepository.getHotel();

      emit(HotelScreenState.hotelFetched(hotel: hotel));
    } catch (_) {
      emit(const HotelScreenState.hotelFetchFailed());
      rethrow;
    }
  }
}

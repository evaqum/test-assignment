import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/hotel_room_model.dart';
import '../../../domain/repositories/hotels_repository.dart';

part 'hotel_rooms_screen_bloc.freezed.dart';
part 'hotel_rooms_screen_event.dart';
part 'hotel_rooms_screen_state.dart';

class HotelRoomsScreenBloc extends Bloc<HotelRoomsScreenEvent, HotelRoomsScreenState> {
  final int hotelId;
  final HotelsRepository hotelsRepository;

  HotelRoomsScreenBloc({
    required this.hotelId,
    required this.hotelsRepository,
  }) : super(const HotelRoomsScreenState.loading()) {
    on(_handleRoomsFetchRequested);
  }

  void _handleRoomsFetchRequested(
    _RoomsFetchRequested event,
    Emitter<HotelRoomsScreenState> emit,
  ) async {
    try {
      final rooms = await hotelsRepository.getHotelRooms(hotelId: hotelId);

      emit(HotelRoomsScreenState.hotelRoomsFetched(rooms: rooms));
    } catch (_) {
      emit(const HotelRoomsScreenState.hotelRoomsFetchFailed());
      rethrow;
    }
  }
}

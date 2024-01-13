import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../hotels/domain/models/hotel_model.dart';
import '../../../../../hotels/domain/models/hotel_room_model.dart';
import '../../../../domain/models/room_book_info_model.dart';
import '../../../../domain/repositories/booking_repository.dart';

part 'room_book_info_bloc.freezed.dart';
part 'room_book_info_event.dart';
part 'room_book_info_state.dart';

class RoomBookInfoBloc extends Bloc<RoomBookInfoEvent, RoomBookInfoState> {
  final HotelModel hotel;
  final HotelRoomModel room;

  final BookingRepository bookingRepository;

  RoomBookInfoBloc({
    required this.hotel,
    required this.room,
    required this.bookingRepository,
  }) : super(const RoomBookInfoState.loading()) {
    on(_handleFetchRequested);
  }

  void _handleFetchRequested(
    _FetchRequested event,
    Emitter<RoomBookInfoState> emit,
  ) async {
    try {
      final roomBookInfo = await bookingRepository.getRoomBookInfo(
        hotelId: hotel.id,
        roomId: room.id,
      );

      emit(RoomBookInfoState.loaded(roomBookInfo: roomBookInfo));
    } catch (_) {
      emit(const RoomBookInfoState.loadFailed());
      rethrow;
    }
  }
}

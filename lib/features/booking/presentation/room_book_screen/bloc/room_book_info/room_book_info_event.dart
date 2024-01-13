part of 'room_book_info_bloc.dart';

@freezed
sealed class RoomBookInfoEvent with _$RoomBookInfoEvent {
  const factory RoomBookInfoEvent.fetchRequested() = _FetchRequested;
}

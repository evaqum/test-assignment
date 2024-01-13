part of 'room_book_info_bloc.dart';

@freezed
sealed class RoomBookInfoState with _$RoomBookInfoState {
  const factory RoomBookInfoState.loading() = RoomBookInfoStateLoading;
  const factory RoomBookInfoState.loaded({
    required RoomBookInfoModel roomBookInfo,
  }) = RoomBookInfoStateLoaded;
  const factory RoomBookInfoState.loadFailed() = RoomBookInfoStateLoadFailed;
}

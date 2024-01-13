part of 'room_book_form_bloc.dart';

sealed class TouristRelatedRoomBookFormEvent implements RoomBookFormEvent {
  int get touristIndex;
}

@freezed
class RoomBookFormEvent with _$RoomBookFormEvent {
  const factory RoomBookFormEvent.clientEmailChanged(String email) = _ClientEmailChanged;
  const factory RoomBookFormEvent.clientPhoneChanged(String phone) = _ClientPhoneChanged;

  const factory RoomBookFormEvent.touristAdded() = _TouristAdded;

  @Implements<TouristRelatedRoomBookFormEvent>()
  const factory RoomBookFormEvent.touristNameChanged({
    required int touristIndex,
    required String name,
  }) = _TouristNameChanged;

  @Implements<TouristRelatedRoomBookFormEvent>()
  const factory RoomBookFormEvent.touristSurnameChanged({
    required int touristIndex,
    required String surname,
  }) = _TouristSurnameChanged;

  @Implements<TouristRelatedRoomBookFormEvent>()
  const factory RoomBookFormEvent.touristBirthdateChanged({
    required int touristIndex,
    required String birthdate,
  }) = _TouristBirthdateChanged;

  @Implements<TouristRelatedRoomBookFormEvent>()
  const factory RoomBookFormEvent.touristCitizenshipChanged({
    required int touristIndex,
    required String citizenship,
  }) = _TouristCitizenshipChanged;

  @Implements<TouristRelatedRoomBookFormEvent>()
  const factory RoomBookFormEvent.touristPassportChanged({
    required int touristIndex,
    required String passport,
  }) = _TouristPassportChanged;

  @Implements<TouristRelatedRoomBookFormEvent>()
  const factory RoomBookFormEvent.touristPassportDateChanged({
    required int touristIndex,
    required String passportDate,
  }) = _TouristPassportDateChanged;

  const factory RoomBookFormEvent.submitted() = _Submitted;
}

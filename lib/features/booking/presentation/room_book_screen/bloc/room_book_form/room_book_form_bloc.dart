import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/repositories/booking_repository.dart';

part 'room_book_form_bloc.freezed.dart';
part 'room_book_form_event.dart';
part 'room_book_form_state.dart';

class RoomBookFormBloc extends Bloc<RoomBookFormEvent, RoomBookFormState> {
  final BookingRepository bookingRepository;

  RoomBookFormBloc({
    required this.bookingRepository,
  }) : super(const RoomBookFormState()) {
    on(_handleClientPhoneChanged);
    on(_handleClientEmailChanged);
    on(_handleTouristAdded);
    on(_handleTouristRelatedRoomBookFormEvent);
    on(_handleSubmitted);
  }

  bool _isValidTouristIndex(int index) {
    return index >= 0 && index < state.tourists.length;
  }

  void _handleClientPhoneChanged(
    _ClientPhoneChanged event,
    Emitter<RoomBookFormState> emit,
  ) {
    emit(state.copyWith(
      clientPhone: PhoneInput.dirty(event.phone),
    ));
  }

  void _handleClientEmailChanged(
    _ClientEmailChanged event,
    Emitter<RoomBookFormState> emit,
  ) {
    emit(state.copyWith(
      clientEmail: EmailInput.dirty(event.email),
    ));
  }

  void _handleTouristAdded(
    _TouristAdded event,
    Emitter<RoomBookFormState> emit,
  ) {
    emit(state.copyWith(
      tourists: [
        ...state.tourists,
        const RoomBookTouristForm(),
      ],
    ));
  }

  void _handleTouristRelatedRoomBookFormEvent(
    TouristRelatedRoomBookFormEvent event,
    Emitter<RoomBookFormState> emit,
  ) {
    if (!_isValidTouristIndex(event.touristIndex)) {
      return;
    }

    final tourist = state.tourists[event.touristIndex];

    RoomBookTouristForm newTourist;
    switch (event) {
      case _TouristNameChanged():
        newTourist = tourist.copyWith(
          name: CommonInput.dirty(event.name),
        );
      case _TouristSurnameChanged():
        newTourist = tourist.copyWith(
          surname: CommonInput.dirty(event.surname),
        );
      case _TouristBirthdateChanged():
        newTourist = tourist.copyWith(
          birthdate: CommonInput.dirty(event.birthdate),
        );
      case _TouristCitizenshipChanged():
        newTourist = tourist.copyWith(
          citizenship: CommonInput.dirty(event.citizenship),
        );
      case _TouristPassportChanged():
        newTourist = tourist.copyWith(
          passport: CommonInput.dirty(event.passport),
        );
      case _TouristPassportDateChanged():
        newTourist = tourist.copyWith(
          passportDate: CommonInput.dirty(event.passportDate),
        );
    }

    final tourists = [...state.tourists];
    tourists[event.touristIndex] = newTourist;

    emit(state.copyWith(tourists: tourists));
  }

  void _handleSubmitted(
    _Submitted event,
    Emitter<RoomBookFormState> emit,
  ) async {
    if (state.isNotValid) {
      emit(state.copyWith(
        triedSubmitting: true,
      ));

      return;
    }

    emit(state.copyWith(
      triedSubmitting: false,
      orderIdResult: null,
    ));

    final orderId = await bookingRepository.bookRoom();

    emit(state.copyWith(
      orderIdResult: orderId,
    ));
  }
}

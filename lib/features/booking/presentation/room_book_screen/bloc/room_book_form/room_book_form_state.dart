part of 'room_book_form_bloc.dart';

enum CommonInputError { empty }

class CommonInput extends FormzInput<String, CommonInputError> {
  const CommonInput.pure() : super.pure('');
  const CommonInput.dirty([String value = '']) : super.dirty(value);

  @override
  CommonInputError? validator(String value) {
    return value.isEmpty ? CommonInputError.empty : null;
  }
}

enum EmailInputError { empty, invalid }

final _emailRegexp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

class EmailInput extends FormzInput<String, EmailInputError> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty([String value = '']) : super.dirty(value);

  @override
  EmailInputError? validator(String value) {
    if (value.isEmpty) {
      return EmailInputError.empty;
    }

    if (!_emailRegexp.hasMatch(value)) {
      return EmailInputError.invalid;
    }

    return null;
  }
}

enum PhoneInputError { empty, invalid }

final _phoneRegexp = RegExp(r'^\d{10}$');

class PhoneInput extends FormzInput<String, PhoneInputError> {
  const PhoneInput.pure() : super.pure('');
  const PhoneInput.dirty([String value = '']) : super.dirty(value);

  @override
  PhoneInputError? validator(String value) {
    if (value.isEmpty) {
      return PhoneInputError.empty;
    }

    if (!_phoneRegexp.hasMatch(value)) {
      return PhoneInputError.invalid;
    }

    return null;
  }
}

@freezed
class RoomBookFormState with _$RoomBookFormState, FormzMixin {
  const RoomBookFormState._();

  const factory RoomBookFormState({
    @Default(PhoneInput.pure()) PhoneInput clientPhone,
    @Default(EmailInput.pure()) EmailInput clientEmail,
    @Default([RoomBookTouristForm()]) List<RoomBookTouristForm> tourists,
    @Default(false) bool triedSubmitting,
    String? orderIdResult,
  }) = _RoomBookFormState;

  @override
  List<FormzInput> get inputs {
    return [
      clientPhone,
      clientEmail,
      for (final tourist in tourists) ...tourist.inputs,
    ];
  }
}

@freezed
class RoomBookTouristForm with _$RoomBookTouristForm, FormzMixin {
  const RoomBookTouristForm._();

  const factory RoomBookTouristForm({
    @Default(CommonInput.pure()) CommonInput name,
    @Default(CommonInput.pure()) CommonInput surname,
    @Default(CommonInput.pure()) CommonInput birthdate,
    @Default(CommonInput.pure()) CommonInput citizenship,
    @Default(CommonInput.pure()) CommonInput passport,
    @Default(CommonInput.pure()) CommonInput passportDate,
  }) = _RoomBookTouristForm;

  @override
  List<FormzInput> get inputs {
    return [
      name,
      surname,
      birthdate,
      citizenship,
      passport,
      passportDate,
    ];
  }
}

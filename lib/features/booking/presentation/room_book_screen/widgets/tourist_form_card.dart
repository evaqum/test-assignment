import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/widgets/card.dart';
import '../../../../app/presentation/widgets/field.dart';
import '../../../../app/presentation/widgets/space.dart';
import '../bloc/room_book_form/room_book_form_bloc.dart';

class RoomBookTouristFormCard extends StatelessWidget {
  final int touristIndex;

  const RoomBookTouristFormCard({
    super.key,
    required this.touristIndex,
  });

  String get _indexString {
    const numerals = [
      'Первый',
      'Второй',
      'Третий',
      'Четвертый',
      'Пятый',
      'Шестой',
      'Седьмой',
      'Восьмой',
      'Девятый',
      'Десятый',
    ];

    if (touristIndex < numerals.length) {
      return numerals[touristIndex];
    }

    return '$touristIndex';
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RoomBookFormBloc>();

    return BlocSelector<RoomBookFormBloc, RoomBookFormState, bool>(
      selector: (state) => state.triedSubmitting,
      builder: (context, showErrors) {
        return BlocSelector<RoomBookFormBloc, RoomBookFormState, RoomBookTouristForm>(
          selector: (state) => state.tourists[touristIndex],
          builder: (context, formState) {
            return HExpandingCard(
              title: Text('$_indexString турист'),
              children: [
                HField(
                  label: 'Имя',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.name,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristNameChanged(
                    name: value,
                    touristIndex: touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  label: 'Фамилия',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.surname,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristSurnameChanged(
                    surname: value,
                    touristIndex: touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  label: 'Дата рождения',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.birthdate,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristBirthdateChanged(
                    birthdate: value,
                    touristIndex: touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  label: 'Гражданство',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.citizenship,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristCitizenshipChanged(
                    citizenship: value,
                    touristIndex: touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  label: 'Номер загранпаспорта',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.passport,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristPassportChanged(
                    passport: value,
                    touristIndex: touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  label: 'Срок действия загранпаспорта',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.passportDate,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristPassportDateChanged(
                    passportDate: value,
                    touristIndex: touristIndex,
                  )),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

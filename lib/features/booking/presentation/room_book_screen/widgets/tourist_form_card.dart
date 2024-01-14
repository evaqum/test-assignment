import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/widgets/card.dart';
import '../../../../app/presentation/widgets/field.dart';
import '../../../../app/presentation/widgets/space.dart';
import '../bloc/room_book_form/room_book_form_bloc.dart';

class RoomBookTouristFormCard extends StatefulWidget {
  final int touristIndex;

  const RoomBookTouristFormCard({
    super.key,
    required this.touristIndex,
  });

  @override
  State<RoomBookTouristFormCard> createState() => _RoomBookTouristFormCardState();
}

class _RoomBookTouristFormCardState extends State<RoomBookTouristFormCard> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

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

    if (widget.touristIndex < numerals.length) {
      return numerals[widget.touristIndex];
    }

    return '${widget.touristIndex}';
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final bloc = context.read<RoomBookFormBloc>();

    return BlocSelector<RoomBookFormBloc, RoomBookFormState, bool>(
      selector: (state) => state.triedSubmitting,
      builder: (context, showErrors) {
        return BlocSelector<RoomBookFormBloc, RoomBookFormState, RoomBookTouristForm>(
          selector: (state) => state.tourists[widget.touristIndex],
          builder: (context, formState) {
            return HExpandingCard(
              title: Text('$_indexString турист'),
              children: [
                HField(
                  key: ValueKey('tourist_${widget.touristIndex}_name_input'),
                  label: 'Имя',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.name,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristNameChanged(
                    name: value,
                    touristIndex: widget.touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  key: ValueKey('tourist_${widget.touristIndex}_surname_input'),
                  label: 'Фамилия',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.surname,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristSurnameChanged(
                    surname: value,
                    touristIndex: widget.touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  key: ValueKey('tourist_${widget.touristIndex}_birthdate_input'),
                  label: 'Дата рождения',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.birthdate,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristBirthdateChanged(
                    birthdate: value,
                    touristIndex: widget.touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  key: ValueKey('tourist_${widget.touristIndex}_citizenship_input'),
                  label: 'Гражданство',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.citizenship,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristCitizenshipChanged(
                    citizenship: value,
                    touristIndex: widget.touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  key: ValueKey('tourist_${widget.touristIndex}_passport_input'),
                  label: 'Номер загранпаспорта',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.passport,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristPassportChanged(
                    passport: value,
                    touristIndex: widget.touristIndex,
                  )),
                  textInputAction: TextInputAction.next,
                ),
                const Space.vertical(8.0),
                HField(
                  key: ValueKey('tourist_${widget.touristIndex}_passport_date_input'),
                  label: 'Срок действия загранпаспорта',
                  errorBehavior: showErrors ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.neverShow,
                  inputValue: formState.passportDate,
                  onChanged: (value) => bloc.add(RoomBookFormEvent.touristPassportDateChanged(
                    passportDate: value,
                    touristIndex: widget.touristIndex,
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

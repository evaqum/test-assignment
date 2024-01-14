import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/widgets/card.dart';
import '../../../../app/presentation/widgets/field.dart';
import '../../../../app/presentation/widgets/space.dart';
import '../bloc/room_book_form/room_book_form_bloc.dart';

class RoomBookClientInfoForm extends StatefulWidget {
  const RoomBookClientInfoForm({
    super.key,
  });

  @override
  State<RoomBookClientInfoForm> createState() => _RoomBookClientInfoFormState();
}

class _RoomBookClientInfoFormState extends State<RoomBookClientInfoForm> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final bloc = context.read<RoomBookFormBloc>();

    return BlocBuilder<RoomBookFormBloc, RoomBookFormState>(
      builder: (context, state) {
        return HCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Информация о покупателе',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Space.vertical(20.0),
              HField(
                key: const ValueKey('phone_input'),
                label: 'Номер телефона',
                errorBehavior: state.triedSubmitting ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.showOnLostFocus,
                inputValue: state.clientPhone,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                type: HFieldType.phone,
                onChanged: (phone) => bloc.add(
                  RoomBookFormEvent.clientPhoneChanged(phone),
                ),
              ),
              const Space.vertical(8.0),
              HField(
                key: const ValueKey('email_input'),
                label: 'Почта',
                errorBehavior: state.triedSubmitting ? HFieldErrorBehavior.showAll : HFieldErrorBehavior.showOnLostFocus,
                inputValue: state.clientEmail,
                keyboardType: TextInputType.emailAddress,
                onChanged: (email) => bloc.add(
                  RoomBookFormEvent.clientEmailChanged(email),
                ),
              ),
              const Space.vertical(8.0),
              const Text(
                'Эти данные никому не передаются. '
                'После оплаты мы вышлем чек на указанный вами номер и почту',
                style: TextStyle(
                  color: Color(0xFF828796),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../app/presentation/widgets/card.dart';
import '../../../../app/presentation/widgets/info_table.dart';
import '../../../domain/models/room_book_info_model.dart';

class RoomBookInfoCard extends StatelessWidget {
  const RoomBookInfoCard({
    super.key,
    required this.roomBookInfo,
  });

  final RoomBookInfoModel roomBookInfo;

  @override
  Widget build(BuildContext context) {
    return HCard(
      child: HInfoTable(entries: [
        HInfoTableEntry(
          title: 'Вылет из',
          value: roomBookInfo.departureFrom,
        ),
        HInfoTableEntry(
          title: 'Страна, город',
          value: roomBookInfo.arrivalTo,
        ),
        HInfoTableEntry(
          title: 'Даты',
          value: '${roomBookInfo.tourDateStart} – ${roomBookInfo.tourDateEnd}',
        ),
        HInfoTableEntry(
          title: 'Кол-во ночей',
          value: '${roomBookInfo.numberOfNights} ${Intl.plural(
            roomBookInfo.numberOfNights,
            one: 'ночь',
            few: 'ночи',
            other: 'ночей',
          )}',
        ),
        HInfoTableEntry(
          title: 'Отель',
          value: roomBookInfo.hotelName,
        ),
        HInfoTableEntry(
          title: 'Номер',
          value: roomBookInfo.roomName,
        ),
        HInfoTableEntry(
          title: 'Питание',
          value: roomBookInfo.nutritionPlan,
        ),
      ]),
    );
  }
}

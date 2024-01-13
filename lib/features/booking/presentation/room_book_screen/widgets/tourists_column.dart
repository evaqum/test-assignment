import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/icons.dart';
import '../../../../app/presentation/widgets/card.dart';
import '../../../../app/presentation/widgets/fitted_icon.dart';
import '../../../../app/presentation/widgets/space.dart';
import '../bloc/room_book_form/room_book_form_bloc.dart';
import 'tourist_form_card.dart';

class RoomBookTouristsColumn extends StatelessWidget {
  const RoomBookTouristsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<RoomBookFormBloc, RoomBookFormState, int>(
      selector: (state) => state.tourists.length,
      builder: (context, touristCount) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < touristCount; i++) ...[
              RoomBookTouristFormCard(
                touristIndex: i,
                key: ValueKey(i),
              ),
              if (i < touristCount - 1) const Space.vertical(8.0),
            ],
            if (touristCount < 10) ...[
              const Space.vertical(8.0),
              const _AddTouristCard(),
            ],
          ],
        );
      },
    );
  }
}

class _AddTouristCard extends StatelessWidget {
  const _AddTouristCard();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RoomBookFormBloc>();

    return HCard(
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.zero,
      child: Material(
        type: MaterialType.transparency,
        textStyle: DefaultTextStyle.of(context).style,
        child: InkWell(
          splashColor: Colors.black.withOpacity(0.05),
          onTap: () => bloc.add(const RoomBookFormEvent.touristAdded()),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 13.0,
              horizontal: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Добавить туриста',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: const Color(0xFF0D72FF),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: HFittedIcon.squareBox(
                      dimension: 24.0,
                      icon: Icon(
                        HIcons.add24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:injectable/injectable.dart';

import '../../domain/models/hotel_model.dart';
import '../../domain/repositories/hotels_repository.dart';

@Injectable(as: HotelsRepository)
final class FakeHotelsRepository implements HotelsRepository {
  @override
  Future<HotelModel> getHotel() async {
    await Future.delayed(const Duration(milliseconds: 700));

    return const HotelModel(
      id: '0',
      name: 'Steigenberger Makadi',
      address: 'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
      imageUrls: [
        'https://i.imgur.com/79pSMFR.png',
        'https://i.imgur.com/79pSMFR.png',
        'https://i.imgur.com/79pSMFR.png',
        'https://i.imgur.com/79pSMFR.png',
        'https://i.imgur.com/79pSMFR.png',
      ],
      description: ''
          'Отель VIP-класса с собственными гольф полями. '
          'Высокий уровнь сервиса. '
          'Рекомендуем для респектабельного отдыха. '
          'Отель принимает гостей от 18 лет!',
      ratingString: '5 Превосходно',
      minimalPrice: 134673.0,
      features: [
        '3-я линия',
        'Платный Wi-Fi в фойе',
        '30 км до аэропорта',
        '1 км до пляжа',
      ],
    );
  }
}

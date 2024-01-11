import 'package:injectable/injectable.dart';

import '../../domain/models/hotel_model.dart';
import '../../domain/models/hotel_room_model.dart';
import '../../domain/repositories/hotels_repository.dart';
import '../datasources/api_datasource.dart';
import '../mapper/hotel_mapper.dart';
import '../mapper/hotel_rooms_mapper.dart';

@Injectable(as: HotelsRepository)
final class HotelsRepositoryImpl implements HotelsRepository {
  final HotelsApiDatasource apiDatasource;

  HotelsRepositoryImpl({required this.apiDatasource});

  @override
  Future<HotelModel> getHotel() async {
    final hotelDto = await apiDatasource.getHotel();

    return hotelDto.toDomain();
  }

  @override
  Future<List<HotelRoomModel>> getHotelRooms({required int hotelId}) async {
    final hotelRoomsDto = await apiDatasource.getHotelRooms();

    return hotelRoomsDto.toDomain();
  }
}

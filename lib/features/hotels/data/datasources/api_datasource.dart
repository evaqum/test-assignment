import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/hotel_dto.dart';
import '../dto/hotel_rooms_dto.dart';

part 'api_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: 'https://run.mocky.io/v3')
abstract class HotelsApiDatasource {
  @factoryMethod
  factory HotelsApiDatasource(Dio dio) = _HotelsApiDatasource;

  @GET('/d144777c-a67f-4e35-867a-cacc3b827473')
  Future<HotelDto> getHotel();

  @GET('/8b532701-709e-4194-a41c-1a903af00195')
  Future<HotelRoomsDto> getHotelRooms();
}

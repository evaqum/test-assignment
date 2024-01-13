import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/room_book_info_dto.dart';

part 'api_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: 'https://run.mocky.io/v3')
abstract class BookingApiDatasource {
  @factoryMethod
  factory BookingApiDatasource(Dio dio) = _BookingApiDatasource;

  @GET('/63866c74-d593-432c-af8e-f279d1a8d2ff')
  Future<RoomBookInfoDto> getRoomBookInfo();
}

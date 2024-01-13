import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../domain/models/room_book_info_model.dart';
import '../../domain/repositories/booking_repository.dart';
import '../datasources/api_datasource.dart';
import '../mapper/room_book_info_mapper.dart';

@Injectable(as: BookingRepository)
final class BookingRepositoryImpl implements BookingRepository {
  final BookingApiDatasource bookingApiDatasource;
  final random = Random();

  BookingRepositoryImpl({
    required this.bookingApiDatasource,
  });

  @override
  Future<RoomBookInfoModel> getRoomBookInfo({
    required int hotelId,
    required int roomId,
  }) async {
    final roomBookInfoDto = await bookingApiDatasource.getRoomBookInfo();

    return roomBookInfoDto.toDomain();
  }

  @override
  Future<String> bookRoom() async {
    final orderId = random.nextInt(900000) + 100000;

    return '$orderId';
  }
}

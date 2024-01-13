// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_assignment/features/app/di/module.dart' as _i10;
import 'package:test_assignment/features/booking/data/datasources/api_datasource.dart'
    as _i7;
import 'package:test_assignment/features/booking/data/repositories/booking_repository.dart'
    as _i9;
import 'package:test_assignment/features/booking/domain/repositories/booking_repository.dart'
    as _i8;
import 'package:test_assignment/features/hotels/data/datasources/api_datasource.dart'
    as _i4;
import 'package:test_assignment/features/hotels/data/repositories/hotels_repository.dart'
    as _i6;
import 'package:test_assignment/features/hotels/domain/repositories/hotels_repository.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dependenciesModule = _$DependenciesModule();
    gh.factory<_i3.Dio>(() => dependenciesModule.dio);
    gh.factory<_i4.HotelsApiDatasource>(
        () => _i4.HotelsApiDatasource(gh<_i3.Dio>()));
    gh.factory<_i5.HotelsRepository>(() =>
        _i6.HotelsRepositoryImpl(apiDatasource: gh<_i4.HotelsApiDatasource>()));
    gh.factory<_i7.BookingApiDatasource>(
        () => _i7.BookingApiDatasource(gh<_i3.Dio>()));
    gh.factory<_i8.BookingRepository>(() => _i9.BookingRepositoryImpl(
        bookingApiDatasource: gh<_i7.BookingApiDatasource>()));
    return this;
  }
}

class _$DependenciesModule extends _i10.DependenciesModule {}

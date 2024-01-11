import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DependenciesModule {
  @injectable
  Dio get dio {
    return Dio();
  }
}

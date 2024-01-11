import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'configure.config.dart';

final get = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  get.init();
}

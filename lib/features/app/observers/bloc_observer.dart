import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

final _logger = Logger('bloc');

class HBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    _logger.info('onChange(${bloc.runtimeType})');
    _logger.info('from: ${change.currentState}');
    _logger.info('  to: ${change.nextState}');
  }
}

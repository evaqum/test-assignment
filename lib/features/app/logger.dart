import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

void configureLogger() {
  Logger.root.onRecord.listen((record) {
    final message = StringBuffer();

    message.write('[${record.level.name}] ${record.loggerName}(${record.time}): ${record.message}');

    if (record.error != null) {
      message.write('\n${record.error}');
    }

    debugPrint(message.toString());

    if (record.stackTrace != null) {
      debugPrintStack(stackTrace: record.stackTrace);
    }
  });
}

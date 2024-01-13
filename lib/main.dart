import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

import 'features/app/app.dart';
import 'features/app/di/configure.dart';
import 'features/app/logger.dart';
import 'features/app/navigation/routes.dart';
import 'features/app/observers/bloc_observer.dart';

void main() {
  final appLogger = Logger('app');

  runZonedGuarded(() {
    configureLogger();
    configureDependencies();

    final router = GoRouter(
      routes: $appRoutes,
      initialLocation: const HotelScreenRoute().location,
    );

    Bloc.observer = HBlocObserver();

    WidgetsFlutterBinding.ensureInitialized();

    runApp(HotelApp(
      router: router,
    ));
  }, (error, stack) {
    appLogger.severe('Caught error:', error, stack);
  });
}

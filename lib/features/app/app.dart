import 'package:flutter/material.dart';

import 'theme.dart';

class HotelApp extends StatelessWidget {
  final RouterConfig<Object> router;

  const HotelApp({
    super.key,
    required this.router,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: HotelAppTheme.theme,
    );
  }
}

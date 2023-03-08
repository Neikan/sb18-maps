// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_maps/ui/screens/screen_map/screen_map.dart';
import 'package:app_maps/ui/styles/themes.dart';

class UiApp extends StatelessWidget {
  const UiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      home: const ScreenMap(),
    );
  }
}

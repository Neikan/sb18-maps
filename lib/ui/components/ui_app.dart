// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_maps/bloc/bloc_map.dart';
import 'package:app_maps/ui/screens/screen_map/screen_map.dart';
import 'package:app_maps/ui/styles/themes.dart';

class UiApp extends StatelessWidget {
  const UiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      // Если в приложении будет генерация роутов, то вынести создание блока туда
      home: BlocProvider<BlocMap>(
        create: (_) => BlocMap(),
        child: const ScreenMap(),
      ),
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

// Project imports:
import 'package:app_maps/bloc/bloc_map.dart';
import 'package:app_maps/bloc/bloc_map_events.dart';
import 'package:app_maps/bloc/bloc_map_state.dart';
import 'package:app_maps/consts/common.dart';
import 'package:app_maps/consts/enums.dart';
import 'package:app_maps/ui/components/ui_button.dart';
import 'package:app_maps/ui/components/ui_loader.dart';

part 'components/ui_arrows.dart';
part 'components/ui_controls.dart';
part 'components/ui_map.dart';
part 'components/ui_slider.dart';

class ScreenMap extends StatelessWidget {
  const ScreenMap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocMap, BlocMapState>(
      builder: (_, state) {
        return Scaffold(
          body: Stack(children: [
            const _UiMap(),
            state.when(
              loading: () => const UiLoader(),
              loaded: (controller, scale) => _UiControls(
                controller: controller,
                scale: scale,
              ),
            ),
          ]),
        );
      },
    );
  }
}

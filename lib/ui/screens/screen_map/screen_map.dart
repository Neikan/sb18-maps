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
part 'components/ui_slider.dart';

class ScreenMap extends StatefulWidget {
  const ScreenMap({super.key});

  @override
  State<ScreenMap> createState() => _ScreenMapState();
}

class _ScreenMapState extends State<ScreenMap> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocMap>(
      create: (_) => BlocMap(),
      child: BlocBuilder<BlocMap, BlocMapState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(children: <Widget>[
              YandexMap(
                mapType: MapType.map,
                logoAlignment: const MapAlignment(
                  horizontal: HorizontalAlignment.left,
                  vertical: VerticalAlignment.bottom,
                ),
                onMapCreated: (YandexMapController yandexMapController) {
                  context
                      .read<BlocMap>()
                      .add(BlocMapEventLoaded(yandexMapController, scaleStart));
                },
              ),
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
      ),
    );
  }
}

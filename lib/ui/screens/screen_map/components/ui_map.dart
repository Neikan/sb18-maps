part of '../screen_map.dart';

class _UiMap extends StatelessWidget {
  const _UiMap();

  @override
  Widget build(BuildContext context) {
    void handleMapCreated(YandexMapController yandexMapController) {
      context
          .read<BlocMap>()
          .add(BlocMapEventLoaded(yandexMapController, scaleStart));
    }

    return YandexMap(
      mapType: MapType.map,
      logoAlignment: const MapAlignment(
        horizontal: HorizontalAlignment.center,
        vertical: VerticalAlignment.top,
      ),
      onMapCreated: handleMapCreated,
    );
  }
}

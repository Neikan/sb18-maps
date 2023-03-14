part of '../screen_map.dart';

class _UiSlider extends StatelessWidget {
  final YandexMapController controller;
  final double scale;

  const _UiSlider({
    required this.controller,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: scale,
      min: scaleMin,
      max: scaleMax,
      divisions: 100,
      label: scale.round().toString(),
      onChanged: _handleSliderChange(context),
    );
  }

  void Function(double) _handleSliderChange(BuildContext context) =>
      (double scale) {
        context.read<BlocMap>().add(BlocMapEventScale(controller, scale));
      };
}

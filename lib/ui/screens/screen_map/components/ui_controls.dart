part of '../screen_map.dart';

class _UiControls extends StatelessWidget {
  final YandexMapController controller;
  final double scale;

  const _UiControls({
    required this.controller,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UiButton(
                onPressed: () => _handleGoToHome(context),
                icon: Icons.home,
              ),
              _UiArrows(
                controller: controller,
                scale: scale,
              ),
            ],
          ),
          _UiSlider(
            scale: scale,
            controller: controller,
          ),
        ],
      ),
    );
  }

  void _handleGoToHome(BuildContext context) {
    context.read<BlocMap>().add(
          BlocMapEventGoTo(
            controller,
            scale,
            pointHome,
          ),
        );
  }
}

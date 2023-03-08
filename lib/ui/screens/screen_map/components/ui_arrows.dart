part of '../screen_map.dart';

class _UiArrows extends StatelessWidget {
  final YandexMapController controller;
  final double scale;

  const _UiArrows({
    required this.controller,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UiButton(
          onPressed: () => _handlePressed(context, Direction.left),
          icon: Icons.arrow_left,
        ),
        Column(
          children: [
            UiButton(
              onPressed: () => _handlePressed(context, Direction.top),
              icon: Icons.arrow_drop_up,
            ),
            UiButton(
              onPressed: () => _handlePressed(context, Direction.bottom),
              icon: Icons.arrow_drop_down,
            ),
          ],
        ),
        UiButton(
          onPressed: () => _handlePressed(context, Direction.right),
          icon: Icons.arrow_right,
        ),
      ],
    );
  }

  void _handlePressed(BuildContext context, Direction direction) {
    context.read<BlocMap>().add(
          BlocMapEventTapArrow(controller, scale, direction),
        );
  }
}

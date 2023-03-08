// Package imports:
import 'package:yandex_mapkit/yandex_mapkit.dart';

// Project imports:
import 'package:app_maps/consts/enums.dart';

abstract class BlocMapEvent {
  final YandexMapController controller;
  final double scale;

  BlocMapEvent(
    this.controller,
    this.scale,
  );
}

class BlocMapEventLoaded extends BlocMapEvent {
  BlocMapEventLoaded(
    super.controller,
    super.scale,
  );
}

class BlocMapEventScale extends BlocMapEvent {
  BlocMapEventScale(
    super.controller,
    super.scale,
  );
}

class BlocMapEventGoTo extends BlocMapEvent {
  final Point point;

  BlocMapEventGoTo(
    super.controller,
    super.scale,
    this.point,
  );
}

class BlocMapEventTapArrow extends BlocMapEvent {
  final Direction direction;

  BlocMapEventTapArrow(
    super.controller,
    super.scale,
    this.direction,
  );
}

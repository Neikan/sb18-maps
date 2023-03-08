// Dart imports:
import 'dart:async';
import 'dart:math';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

// Project imports:
import 'package:app_maps/bloc/bloc_map_events.dart';
import 'package:app_maps/bloc/bloc_map_state.dart';
import 'package:app_maps/consts/common.dart';
import 'package:app_maps/consts/enums.dart';

const double _shiftByTapArrow = 0.001;

class BlocMap extends Bloc<BlocMapEvent, BlocMapState> {
  BlocMap() : super(const BlocMapStateLoading()) {
    on<BlocMapEventLoaded>(_handleLoaded);
    on<BlocMapEventGoTo>(_handleGoTo);
    on<BlocMapEventScale>(_handleScale);
    on<BlocMapEventTapArrow>(_handleTapArrow);
  }

  final _animation =
      const MapAnimation(type: MapAnimationType.smooth, duration: 2.0);

  FutureOr<void> _handleLoaded(
    BlocMapEventLoaded event,
    Emitter<BlocMapState> emit,
  ) async {
    emit(BlocMapStateLoaded(event.controller, event.scale));

    _handleGoTo(
      BlocMapEventGoTo(event.controller, event.scale, pointHome),
      emit,
    );
  }

  Future<void> _handleScale(
    BlocMapEventScale event,
    Emitter<BlocMapState> emit,
  ) async {
    await event.controller.moveCamera(
      CameraUpdate.zoomTo(event.scale),
      animation: _animation,
    );

    emit(BlocMapStateLoaded(event.controller, event.scale));
  }

  Future<void> _handleGoTo(
    BlocMapEventGoTo event,
    Emitter<BlocMapState> emit,
  ) async {
    emit(BlocMapStateLoaded(event.controller, event.scale));

    await event.controller.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: event.point, zoom: event.scale),
      ),
      animation: _animation,
    );
  }

  Future<void> _handleTapArrow(
    BlocMapEventTapArrow event,
    Emitter<BlocMapState> emit,
  ) async {
    final position = await event.controller.getCameraPosition();
    final point = _handleGetNewPoint(event.direction, event.scale, position);

    _handleGoTo(
      BlocMapEventGoTo(event.controller, event.scale, point),
      emit,
    );
  }

  Point _handleGetNewPoint(
    Direction direction,
    double scale,
    CameraPosition position,
  ) {
    double top = 0, right = 0, bottom = 0, left = 0;

    final coefficient = scaleMax - scale == 0 ? 1 : pow(scaleMax - scale, 3);

    final shift = _shiftByTapArrow * coefficient;

    switch (direction) {
      case Direction.top:
        top = shift;
        break;
      case Direction.bottom:
        bottom = shift;
        break;
      case Direction.right:
        right = shift;
        break;
      case Direction.left:
        left = shift;
        break;
    }

    return Point(
      latitude: position.target.latitude + top - bottom,
      longitude: position.target.longitude + right - left,
    );
  }
}

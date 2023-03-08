// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'bloc_map_state.freezed.dart';

@freezed
class BlocMapState with _$BlocMapState {
  const factory BlocMapState.loading() = BlocMapStateLoading;

  const factory BlocMapState.loaded(
    YandexMapController controller,
    double scale,
  ) = BlocMapStateLoaded;
}

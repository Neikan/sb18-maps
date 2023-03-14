// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocMapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(YandexMapController controller, double scale)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(YandexMapController controller, double scale)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(YandexMapController controller, double scale)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocMapStateLoading value) loading,
    required TResult Function(BlocMapStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocMapStateLoading value)? loading,
    TResult? Function(BlocMapStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocMapStateLoading value)? loading,
    TResult Function(BlocMapStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocMapStateCopyWith<$Res> {
  factory $BlocMapStateCopyWith(
          BlocMapState value, $Res Function(BlocMapState) then) =
      _$BlocMapStateCopyWithImpl<$Res, BlocMapState>;
}

/// @nodoc
class _$BlocMapStateCopyWithImpl<$Res, $Val extends BlocMapState>
    implements $BlocMapStateCopyWith<$Res> {
  _$BlocMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocMapStateLoadingCopyWith<$Res> {
  factory _$$BlocMapStateLoadingCopyWith(_$BlocMapStateLoading value,
          $Res Function(_$BlocMapStateLoading) then) =
      __$$BlocMapStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocMapStateLoadingCopyWithImpl<$Res>
    extends _$BlocMapStateCopyWithImpl<$Res, _$BlocMapStateLoading>
    implements _$$BlocMapStateLoadingCopyWith<$Res> {
  __$$BlocMapStateLoadingCopyWithImpl(
      _$BlocMapStateLoading _value, $Res Function(_$BlocMapStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocMapStateLoading implements BlocMapStateLoading {
  const _$BlocMapStateLoading();

  @override
  String toString() {
    return 'BlocMapState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlocMapStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(YandexMapController controller, double scale)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(YandexMapController controller, double scale)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(YandexMapController controller, double scale)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocMapStateLoading value) loading,
    required TResult Function(BlocMapStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocMapStateLoading value)? loading,
    TResult? Function(BlocMapStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocMapStateLoading value)? loading,
    TResult Function(BlocMapStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocMapStateLoading implements BlocMapState {
  const factory BlocMapStateLoading() = _$BlocMapStateLoading;
}

/// @nodoc
abstract class _$$BlocMapStateLoadedCopyWith<$Res> {
  factory _$$BlocMapStateLoadedCopyWith(_$BlocMapStateLoaded value,
          $Res Function(_$BlocMapStateLoaded) then) =
      __$$BlocMapStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({YandexMapController controller, double scale});
}

/// @nodoc
class __$$BlocMapStateLoadedCopyWithImpl<$Res>
    extends _$BlocMapStateCopyWithImpl<$Res, _$BlocMapStateLoaded>
    implements _$$BlocMapStateLoadedCopyWith<$Res> {
  __$$BlocMapStateLoadedCopyWithImpl(
      _$BlocMapStateLoaded _value, $Res Function(_$BlocMapStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? scale = null,
  }) {
    return _then(_$BlocMapStateLoaded(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as YandexMapController,
      null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BlocMapStateLoaded implements BlocMapStateLoaded {
  const _$BlocMapStateLoaded(this.controller, this.scale);

  @override
  final YandexMapController controller;
  @override
  final double scale;

  @override
  String toString() {
    return 'BlocMapState.loaded(controller: $controller, scale: $scale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocMapStateLoaded &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.scale, scale) || other.scale == scale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, scale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocMapStateLoadedCopyWith<_$BlocMapStateLoaded> get copyWith =>
      __$$BlocMapStateLoadedCopyWithImpl<_$BlocMapStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(YandexMapController controller, double scale)
        loaded,
  }) {
    return loaded(controller, scale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(YandexMapController controller, double scale)? loaded,
  }) {
    return loaded?.call(controller, scale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(YandexMapController controller, double scale)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(controller, scale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocMapStateLoading value) loading,
    required TResult Function(BlocMapStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocMapStateLoading value)? loading,
    TResult? Function(BlocMapStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocMapStateLoading value)? loading,
    TResult Function(BlocMapStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocMapStateLoaded implements BlocMapState {
  const factory BlocMapStateLoaded(
          final YandexMapController controller, final double scale) =
      _$BlocMapStateLoaded;

  YandexMapController get controller;
  double get scale;
  @JsonKey(ignore: true)
  _$$BlocMapStateLoadedCopyWith<_$BlocMapStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

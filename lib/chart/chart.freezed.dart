// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChartPropsTearOff {
  const _$ChartPropsTearOff();

// ignore: unused_element
  ListOfTrack tracks(List<TrackProps> value) {
    return ListOfTrack(
      value,
    );
  }

// ignore: unused_element
  InProgress inProgress() {
    return const InProgress();
  }

// ignore: unused_element
  Failed failed([String message]) {
    return Failed(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChartProps = _$ChartPropsTearOff();

/// @nodoc
mixin _$ChartProps {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tracks(List<TrackProps> value),
    @required TResult inProgress(),
    @required TResult failed(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tracks(List<TrackProps> value),
    TResult inProgress(),
    TResult failed(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tracks(ListOfTrack value),
    @required TResult inProgress(InProgress value),
    @required TResult failed(Failed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tracks(ListOfTrack value),
    TResult inProgress(InProgress value),
    TResult failed(Failed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChartPropsCopyWith<$Res> {
  factory $ChartPropsCopyWith(
          ChartProps value, $Res Function(ChartProps) then) =
      _$ChartPropsCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChartPropsCopyWithImpl<$Res> implements $ChartPropsCopyWith<$Res> {
  _$ChartPropsCopyWithImpl(this._value, this._then);

  final ChartProps _value;
  // ignore: unused_field
  final $Res Function(ChartProps) _then;
}

/// @nodoc
abstract class $ListOfTrackCopyWith<$Res> {
  factory $ListOfTrackCopyWith(
          ListOfTrack value, $Res Function(ListOfTrack) then) =
      _$ListOfTrackCopyWithImpl<$Res>;
  $Res call({List<TrackProps> value});
}

/// @nodoc
class _$ListOfTrackCopyWithImpl<$Res> extends _$ChartPropsCopyWithImpl<$Res>
    implements $ListOfTrackCopyWith<$Res> {
  _$ListOfTrackCopyWithImpl(
      ListOfTrack _value, $Res Function(ListOfTrack) _then)
      : super(_value, (v) => _then(v as ListOfTrack));

  @override
  ListOfTrack get _value => super._value as ListOfTrack;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(ListOfTrack(
      value == freezed ? _value.value : value as List<TrackProps>,
    ));
  }
}

/// @nodoc
class _$ListOfTrack with DiagnosticableTreeMixin implements ListOfTrack {
  const _$ListOfTrack(this.value) : assert(value != null);

  @override
  final List<TrackProps> value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChartProps.tracks(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChartProps.tracks'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListOfTrack &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $ListOfTrackCopyWith<ListOfTrack> get copyWith =>
      _$ListOfTrackCopyWithImpl<ListOfTrack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tracks(List<TrackProps> value),
    @required TResult inProgress(),
    @required TResult failed(String message),
  }) {
    assert(tracks != null);
    assert(inProgress != null);
    assert(failed != null);
    return tracks(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tracks(List<TrackProps> value),
    TResult inProgress(),
    TResult failed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tracks != null) {
      return tracks(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tracks(ListOfTrack value),
    @required TResult inProgress(InProgress value),
    @required TResult failed(Failed value),
  }) {
    assert(tracks != null);
    assert(inProgress != null);
    assert(failed != null);
    return tracks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tracks(ListOfTrack value),
    TResult inProgress(InProgress value),
    TResult failed(Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tracks != null) {
      return tracks(this);
    }
    return orElse();
  }
}

abstract class ListOfTrack implements ChartProps {
  const factory ListOfTrack(List<TrackProps> value) = _$ListOfTrack;

  List<TrackProps> get value;
  $ListOfTrackCopyWith<ListOfTrack> get copyWith;
}

/// @nodoc
abstract class $InProgressCopyWith<$Res> {
  factory $InProgressCopyWith(
          InProgress value, $Res Function(InProgress) then) =
      _$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$InProgressCopyWithImpl<$Res> extends _$ChartPropsCopyWithImpl<$Res>
    implements $InProgressCopyWith<$Res> {
  _$InProgressCopyWithImpl(InProgress _value, $Res Function(InProgress) _then)
      : super(_value, (v) => _then(v as InProgress));

  @override
  InProgress get _value => super._value as InProgress;
}

/// @nodoc
class _$InProgress with DiagnosticableTreeMixin implements InProgress {
  const _$InProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChartProps.inProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ChartProps.inProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tracks(List<TrackProps> value),
    @required TResult inProgress(),
    @required TResult failed(String message),
  }) {
    assert(tracks != null);
    assert(inProgress != null);
    assert(failed != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tracks(List<TrackProps> value),
    TResult inProgress(),
    TResult failed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tracks(ListOfTrack value),
    @required TResult inProgress(InProgress value),
    @required TResult failed(Failed value),
  }) {
    assert(tracks != null);
    assert(inProgress != null);
    assert(failed != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tracks(ListOfTrack value),
    TResult inProgress(InProgress value),
    TResult failed(Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress implements ChartProps {
  const factory InProgress() = _$InProgress;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$ChartPropsCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Failed(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Failed with DiagnosticableTreeMixin implements Failed {
  const _$Failed([this.message]);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChartProps.failed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChartProps.failed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $FailedCopyWith<Failed> get copyWith =>
      _$FailedCopyWithImpl<Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tracks(List<TrackProps> value),
    @required TResult inProgress(),
    @required TResult failed(String message),
  }) {
    assert(tracks != null);
    assert(inProgress != null);
    assert(failed != null);
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tracks(List<TrackProps> value),
    TResult inProgress(),
    TResult failed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tracks(ListOfTrack value),
    @required TResult inProgress(InProgress value),
    @required TResult failed(Failed value),
  }) {
    assert(tracks != null);
    assert(inProgress != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tracks(ListOfTrack value),
    TResult inProgress(InProgress value),
    TResult failed(Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements ChartProps {
  const factory Failed([String message]) = _$Failed;

  String get message;
  $FailedCopyWith<Failed> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'input_room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$InputRoomStateTearOff {
  const _$InputRoomStateTearOff();

  _InputRoomState call({String roomName = '', bool validated = false}) {
    return _InputRoomState(
      roomName: roomName,
      validated: validated,
    );
  }
}

// ignore: unused_element
const $InputRoomState = _$InputRoomStateTearOff();

mixin _$InputRoomState {
  String get roomName;
  bool get validated;

  $InputRoomStateCopyWith<InputRoomState> get copyWith;
}

abstract class $InputRoomStateCopyWith<$Res> {
  factory $InputRoomStateCopyWith(
          InputRoomState value, $Res Function(InputRoomState) then) =
      _$InputRoomStateCopyWithImpl<$Res>;
  $Res call({String roomName, bool validated});
}

class _$InputRoomStateCopyWithImpl<$Res>
    implements $InputRoomStateCopyWith<$Res> {
  _$InputRoomStateCopyWithImpl(this._value, this._then);

  final InputRoomState _value;
  // ignore: unused_field
  final $Res Function(InputRoomState) _then;

  @override
  $Res call({
    Object roomName = freezed,
    Object validated = freezed,
  }) {
    return _then(_value.copyWith(
      roomName: roomName == freezed ? _value.roomName : roomName as String,
      validated: validated == freezed ? _value.validated : validated as bool,
    ));
  }
}

abstract class _$InputRoomStateCopyWith<$Res>
    implements $InputRoomStateCopyWith<$Res> {
  factory _$InputRoomStateCopyWith(
          _InputRoomState value, $Res Function(_InputRoomState) then) =
      __$InputRoomStateCopyWithImpl<$Res>;
  @override
  $Res call({String roomName, bool validated});
}

class __$InputRoomStateCopyWithImpl<$Res>
    extends _$InputRoomStateCopyWithImpl<$Res>
    implements _$InputRoomStateCopyWith<$Res> {
  __$InputRoomStateCopyWithImpl(
      _InputRoomState _value, $Res Function(_InputRoomState) _then)
      : super(_value, (v) => _then(v as _InputRoomState));

  @override
  _InputRoomState get _value => super._value as _InputRoomState;

  @override
  $Res call({
    Object roomName = freezed,
    Object validated = freezed,
  }) {
    return _then(_InputRoomState(
      roomName: roomName == freezed ? _value.roomName : roomName as String,
      validated: validated == freezed ? _value.validated : validated as bool,
    ));
  }
}

class _$_InputRoomState
    with DiagnosticableTreeMixin
    implements _InputRoomState {
  const _$_InputRoomState({this.roomName = '', this.validated = false})
      : assert(roomName != null),
        assert(validated != null);

  @JsonKey(defaultValue: '')
  @override
  final String roomName;
  @JsonKey(defaultValue: false)
  @override
  final bool validated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputRoomState(roomName: $roomName, validated: $validated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InputRoomState'))
      ..add(DiagnosticsProperty('roomName', roomName))
      ..add(DiagnosticsProperty('validated', validated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InputRoomState &&
            (identical(other.roomName, roomName) ||
                const DeepCollectionEquality()
                    .equals(other.roomName, roomName)) &&
            (identical(other.validated, validated) ||
                const DeepCollectionEquality()
                    .equals(other.validated, validated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(roomName) ^
      const DeepCollectionEquality().hash(validated);

  @override
  _$InputRoomStateCopyWith<_InputRoomState> get copyWith =>
      __$InputRoomStateCopyWithImpl<_InputRoomState>(this, _$identity);
}

abstract class _InputRoomState implements InputRoomState {
  const factory _InputRoomState({String roomName, bool validated}) =
      _$_InputRoomState;

  @override
  String get roomName;
  @override
  bool get validated;
  @override
  _$InputRoomStateCopyWith<_InputRoomState> get copyWith;
}

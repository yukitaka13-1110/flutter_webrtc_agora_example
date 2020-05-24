// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'webrtc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WebRtcStateTearOff {
  const _$WebRtcStateTearOff();

  _WebRtcState call(
      {int viewIndex = 0,
      List<WebRtcUser> users = const <WebRtcUser>[],
      AvStatus localAvStatus = const AvStatus(),
      AvStatus remoteAvStatus = const AvStatus()}) {
    return _WebRtcState(
      viewIndex: viewIndex,
      users: users,
      localAvStatus: localAvStatus,
      remoteAvStatus: remoteAvStatus,
    );
  }
}

// ignore: unused_element
const $WebRtcState = _$WebRtcStateTearOff();

mixin _$WebRtcState {
  int get viewIndex;
  List<WebRtcUser> get users;
  AvStatus get localAvStatus;
  AvStatus get remoteAvStatus;

  $WebRtcStateCopyWith<WebRtcState> get copyWith;
}

abstract class $WebRtcStateCopyWith<$Res> {
  factory $WebRtcStateCopyWith(
          WebRtcState value, $Res Function(WebRtcState) then) =
      _$WebRtcStateCopyWithImpl<$Res>;
  $Res call(
      {int viewIndex,
      List<WebRtcUser> users,
      AvStatus localAvStatus,
      AvStatus remoteAvStatus});
}

class _$WebRtcStateCopyWithImpl<$Res> implements $WebRtcStateCopyWith<$Res> {
  _$WebRtcStateCopyWithImpl(this._value, this._then);

  final WebRtcState _value;
  // ignore: unused_field
  final $Res Function(WebRtcState) _then;

  @override
  $Res call({
    Object viewIndex = freezed,
    Object users = freezed,
    Object localAvStatus = freezed,
    Object remoteAvStatus = freezed,
  }) {
    return _then(_value.copyWith(
      viewIndex: viewIndex == freezed ? _value.viewIndex : viewIndex as int,
      users: users == freezed ? _value.users : users as List<WebRtcUser>,
      localAvStatus: localAvStatus == freezed
          ? _value.localAvStatus
          : localAvStatus as AvStatus,
      remoteAvStatus: remoteAvStatus == freezed
          ? _value.remoteAvStatus
          : remoteAvStatus as AvStatus,
    ));
  }
}

abstract class _$WebRtcStateCopyWith<$Res>
    implements $WebRtcStateCopyWith<$Res> {
  factory _$WebRtcStateCopyWith(
          _WebRtcState value, $Res Function(_WebRtcState) then) =
      __$WebRtcStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int viewIndex,
      List<WebRtcUser> users,
      AvStatus localAvStatus,
      AvStatus remoteAvStatus});
}

class __$WebRtcStateCopyWithImpl<$Res> extends _$WebRtcStateCopyWithImpl<$Res>
    implements _$WebRtcStateCopyWith<$Res> {
  __$WebRtcStateCopyWithImpl(
      _WebRtcState _value, $Res Function(_WebRtcState) _then)
      : super(_value, (v) => _then(v as _WebRtcState));

  @override
  _WebRtcState get _value => super._value as _WebRtcState;

  @override
  $Res call({
    Object viewIndex = freezed,
    Object users = freezed,
    Object localAvStatus = freezed,
    Object remoteAvStatus = freezed,
  }) {
    return _then(_WebRtcState(
      viewIndex: viewIndex == freezed ? _value.viewIndex : viewIndex as int,
      users: users == freezed ? _value.users : users as List<WebRtcUser>,
      localAvStatus: localAvStatus == freezed
          ? _value.localAvStatus
          : localAvStatus as AvStatus,
      remoteAvStatus: remoteAvStatus == freezed
          ? _value.remoteAvStatus
          : remoteAvStatus as AvStatus,
    ));
  }
}

class _$_WebRtcState with DiagnosticableTreeMixin implements _WebRtcState {
  const _$_WebRtcState(
      {this.viewIndex = 0,
      this.users = const <WebRtcUser>[],
      this.localAvStatus = const AvStatus(),
      this.remoteAvStatus = const AvStatus()})
      : assert(viewIndex != null),
        assert(users != null),
        assert(localAvStatus != null),
        assert(remoteAvStatus != null);

  @JsonKey(defaultValue: 0)
  @override
  final int viewIndex;
  @JsonKey(defaultValue: const <WebRtcUser>[])
  @override
  final List<WebRtcUser> users;
  @JsonKey(defaultValue: const AvStatus())
  @override
  final AvStatus localAvStatus;
  @JsonKey(defaultValue: const AvStatus())
  @override
  final AvStatus remoteAvStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebRtcState(viewIndex: $viewIndex, users: $users, localAvStatus: $localAvStatus, remoteAvStatus: $remoteAvStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WebRtcState'))
      ..add(DiagnosticsProperty('viewIndex', viewIndex))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('localAvStatus', localAvStatus))
      ..add(DiagnosticsProperty('remoteAvStatus', remoteAvStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WebRtcState &&
            (identical(other.viewIndex, viewIndex) ||
                const DeepCollectionEquality()
                    .equals(other.viewIndex, viewIndex)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.localAvStatus, localAvStatus) ||
                const DeepCollectionEquality()
                    .equals(other.localAvStatus, localAvStatus)) &&
            (identical(other.remoteAvStatus, remoteAvStatus) ||
                const DeepCollectionEquality()
                    .equals(other.remoteAvStatus, remoteAvStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(viewIndex) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(localAvStatus) ^
      const DeepCollectionEquality().hash(remoteAvStatus);

  @override
  _$WebRtcStateCopyWith<_WebRtcState> get copyWith =>
      __$WebRtcStateCopyWithImpl<_WebRtcState>(this, _$identity);
}

abstract class _WebRtcState implements WebRtcState {
  const factory _WebRtcState(
      {int viewIndex,
      List<WebRtcUser> users,
      AvStatus localAvStatus,
      AvStatus remoteAvStatus}) = _$_WebRtcState;

  @override
  int get viewIndex;
  @override
  List<WebRtcUser> get users;
  @override
  AvStatus get localAvStatus;
  @override
  AvStatus get remoteAvStatus;
  @override
  _$WebRtcStateCopyWith<_WebRtcState> get copyWith;
}

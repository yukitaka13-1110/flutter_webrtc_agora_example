import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'input_room_state.freezed.dart';

@freezed
abstract class InputRoomState with _$InputRoomState {
  const factory InputRoomState({
    @Default('') String roomName,
    @Default(false) bool validated,
  }) = _InputRoomState;
}

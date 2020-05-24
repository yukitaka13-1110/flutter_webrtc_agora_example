import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

import 'input_room_state.dart';

class InputRoomController extends StateNotifier<InputRoomState> {
  InputRoomController() : super(const InputRoomState()) {
    textEditController.addListener(() {
      final roomName = textEditController.text;
      final validated = _roomNameHasMatch(roomName);
      state = state.copyWith(roomName: roomName, validated: validated);
    });
  }

  static const String tag = 'InputRoomController';

  final TextEditingController textEditController = TextEditingController();

  String validateRoomName(String roomName) {
    if (roomName.isEmpty) {
      return null;
    }
    if (!_roomNameHasMatch(roomName)) {
      return 'You can use a-z, A-Z, 0-9 for room names';
    }
    return null;
  }

  bool _roomNameHasMatch(String roomName) {
    final pattern = RegExp(r'^[a-zA-Z0-9]+$');
    return pattern.hasMatch(roomName);
  }
}

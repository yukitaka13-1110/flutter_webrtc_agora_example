import 'package:agora_example/models/entities/entities.dart';
import 'package:agora_example/utils/constants.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:state_notifier/state_notifier.dart';

import 'webrtc_state.dart';

class WebRtcController extends StateNotifier<WebRtcState> {
  WebRtcController({
    @required String roomName,
  }) : super(const WebRtcState()) {
    debugPrint('$tag: init()');
    initWebRtc(roomName: roomName);
  }

  static const tag = 'WebRtcController';

  Future<void> initWebRtc({@required String roomName}) async {
    await Permission.camera.request();
    await Permission.microphone.request();
    await AgoraRtcEngine.create(Constants.appId);
    await AgoraRtcEngine.enableAudio();
    await AgoraRtcEngine.enableVideo();
    await AgoraRtcEngine.setChannelProfile(ChannelProfile.Communication);
    await AgoraRtcEngine.enableWebSdkInteroperability(true);
    AgoraRtcEngine.onJoinChannelSuccess = _onJoinChannelSuccess;
    AgoraRtcEngine.onUserJoined = _onUserJoined;
    AgoraRtcEngine.onLeaveChannel = _onLeaveChannel;
    AgoraRtcEngine.onUserOffline = _onUserOffline;
    await AgoraRtcEngine.startPreview();
    await AgoraRtcEngine.joinChannel(null, roomName, null, 0);
  }

  Future<void> toggleLocalAudio() async {
    final localAvStatus = state.localAvStatus;
    await AgoraRtcEngine.muteLocalAudioStream(localAvStatus.mic);
    state = state.copyWith(
      localAvStatus: localAvStatus.copyWith(
        mic: !localAvStatus.mic,
      ),
    );
  }

  Future<void> toggleLocalVideo() async {
    final localAvStatus = state.localAvStatus;
    await AgoraRtcEngine.muteLocalVideoStream(localAvStatus.video);
    state = state.copyWith(
      localAvStatus: localAvStatus.copyWith(
        video: !localAvStatus.video,
      ),
    );
  }

  void switchView(int viewIndex) {
    state = state.copyWith(viewIndex: viewIndex);
  }

  void _onJoinChannelSuccess(String roomName, int uid, int elapsed) {
    debugPrint('$tag: onJoinChannelSuccess -> $uid');
    final users = [...state.users, WebRtcUser(uid: uid)];
    state = state.copyWith(
      users: users,
    );
  }

  void _onUserJoined(int uid, int elapsed) {
    debugPrint('$tag: onUserJoined -> $uid');
    final users = [...state.users, WebRtcUser(uid: uid)];
    state = state.copyWith(
      users: users,
    );
  }

  void _onLeaveChannel() {
    debugPrint('$tag: onLeaveChannel');
    state = state.copyWith(users: []);
  }

  void _onUserOffline(int uid, int reason) {
    debugPrint('$tag: onUserOffline -> $uid');
    final users = <WebRtcUser>[];
    for (final user in state.users) {
      if (user.uid != uid) {
        users.add(user);
      }
    }
    state = state.copyWith(users: users, viewIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    AgoraRtcEngine.leaveChannel();
    AgoraRtcEngine.stopPreview();
    AgoraRtcEngine.destroy();
  }
}

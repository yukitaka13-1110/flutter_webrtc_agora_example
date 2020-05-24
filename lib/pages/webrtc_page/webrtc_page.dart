import 'package:agora_example/pages/webrtc_page/room_user_list.dart';
import 'package:agora_example/pages/webrtc_page/webrtc_view.dart';
import 'package:agora_example/pages/webrtc_page/call_action_button.dart';
import 'package:agora_example/models/models.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class WebRtcPage extends StatelessWidget {
  const WebRtcPage._({Key key}) : super(key: key);

  static Widget wrapped({@required String roomName}) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<WebRtcController, WebRtcState>(
          create: (context) => WebRtcController(roomName: roomName),
        ),
      ],
      child: const WebRtcPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localAvStatus = context.select(
      (WebRtcState state) => state.localAvStatus,
    );
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: const WebRtcView(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: const RoomUserList(),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CallActionButton(
                    tag: 'mic mute',
                    icon: localAvStatus.mic ? Icons.mic : Icons.mic_off,
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      context.read<WebRtcController>().toggleLocalAudio();
                    },
                  ),
                  CallActionButton(
                    tag: 'call end',
                    icon: Icons.call_end,
                    backgroundColor: Colors.red,
                    onPressed: Navigator.of(context).pop,
                  ),
                  CallActionButton(
                    tag: 'video mute',
                    icon: localAvStatus.video
                        ? Icons.videocam
                        : Icons.videocam_off,
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      context.read<WebRtcController>().toggleLocalVideo();
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

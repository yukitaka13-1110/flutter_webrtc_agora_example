import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:agora_example/models/models.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class WebRtcView extends StatelessWidget {
  const WebRtcView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = context.select((WebRtcState state) => state.users);
    final viewIndex = context.select((WebRtcState state) => state.viewIndex);
    return users.isNotEmpty
        ? AgoraRenderWidget(
            users[viewIndex].uid,
            local: viewIndex == 0,
          )
        : Container(
            child: const Center(
              child: Text('No user'),
            ),
          );
  }
}

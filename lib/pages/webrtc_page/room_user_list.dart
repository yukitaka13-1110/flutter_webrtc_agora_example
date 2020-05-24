import 'package:agora_example/pages/webrtc_page/room_user_tile.dart';
import 'package:agora_example/models/models.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class RoomUserList extends StatelessWidget {
  const RoomUserList({Key key}) : super(key: key);

  static const double itemExtent = 90;

  @override
  Widget build(BuildContext context) {
    final users = context.select((WebRtcState state) => state.users);
    final viewIndex = context.select((WebRtcState state) => state.viewIndex);
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: users.length,
      itemExtent: itemExtent,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            context.read<WebRtcController>().switchView(index);
          },
          child: RoomUserTile(
            username: '${users[index].uid}',
            height: itemExtent,
            selected: viewIndex == index,
          ),
        );
      },
    );
  }
}

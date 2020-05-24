import 'package:agora_example/models/models.dart';
import 'package:agora_example/pages/webrtc_page/webrtc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class InputRoomPage extends StatelessWidget {
  const InputRoomPage._({Key key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<InputRoomController, InputRoomState>(
          create: (context) => InputRoomController(),
        ),
      ],
      child: const InputRoomPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agora WebRTC Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: context.select(
                (InputRoomController state) => state.textEditController,
              ),
              autofocus: false,
              autovalidate: true,
              validator: context.watch<InputRoomController>().validateRoomName,
              decoration: const InputDecoration(
                labelText: 'Room Name',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              color: Theme.of(context).buttonColor,
              disabledColor: Theme.of(context).disabledColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: context.watch<InputRoomState>().validated
                  ? () async {
                      final roomName = context.read<InputRoomState>().roomName;
                      FocusScope.of(context).unfocus();
                      await Navigator.of(context).push<dynamic>(
                        MaterialPageRoute<dynamic>(builder: (context) {
                          return WebRtcPage.wrapped(roomName: roomName);
                        }),
                      );
                    }
                  : null,
              child: const Text(
                'Join',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:agora_example/pages/input_room_page/input_room_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonColor: Colors.blue,
        disabledColor: Colors.grey.withOpacity(0.3),
      ),
      home: InputRoomPage.wrapped(),
    );
  }
}

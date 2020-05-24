import 'package:flutter/material.dart';

class RoomUserTile extends StatelessWidget {
  const RoomUserTile({
    Key key,
    @required this.username,
    @required this.height,
    @required this.selected,
  }) : super(key: key);

  final double height;
  final String username;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final unitWidth = MediaQuery.of(context).size.width / 10;
    return Row(
      children: [
        SizedBox(
          height: height,
          width: unitWidth * 3,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: height / 10 * 6,
                  width: height / 10 * 6,
                  decoration: const BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      username[0],
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  color: selected ? Colors.black.withOpacity(0.4) : null,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height,
          width: unitWidth * 7,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'User: $username',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

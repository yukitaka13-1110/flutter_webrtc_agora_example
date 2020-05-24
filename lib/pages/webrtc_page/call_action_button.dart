import 'package:flutter/material.dart';

@immutable
class CallActionButton extends StatelessWidget {
  const CallActionButton({
    Key key,
    this.tag,
    this.color = Colors.white,
    this.backgroundColor = Colors.blue,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  final String tag;
  final IconData icon;
  final Color color;
  final Color backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        heroTag: tag,
        backgroundColor: backgroundColor,
        onPressed: onPressed,
        child: Icon(
          icon,
          color: color,
          size: 36,
        ),
      ),
    );
  }
}

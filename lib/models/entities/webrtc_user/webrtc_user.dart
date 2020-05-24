import 'package:flutter/material.dart';

@immutable
class WebRtcUser {
  const WebRtcUser({@required this.uid});

  final int uid;

  WebRtcUser copyWith({int uid}) {
    return WebRtcUser(
      uid: uid ?? this.uid,
    );
  }
}

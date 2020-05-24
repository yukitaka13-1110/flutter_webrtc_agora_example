import 'package:flutter/material.dart';

@immutable
class AvStatus {
  const AvStatus({this.mic = true, this.video = true});

  final bool mic;
  final bool video;

  AvStatus copyWith({bool mic, bool video}) {
    return AvStatus(
      mic: mic ?? this.mic,
      video: video ?? this.video,
    );
  }
}

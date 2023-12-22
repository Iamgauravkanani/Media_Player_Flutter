import 'package:flutter/material.dart';
import '../../../constants/constant.dart';

Row audio_controls() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      FloatingActionButton(
        onPressed: () {
          Constant.assetsAudioPlayer.pause();
        },
        child: const Icon(Icons.pause),
      ),
      FloatingActionButton(
        onPressed: () {
          Constant.assetsAudioPlayer.play();
        },
        child: const Icon(Icons.play_arrow),
      ),
      FloatingActionButton(
        onPressed: () {
          Constant.playAudio();
        },
        child: const Icon(Icons.refresh),
      ),
      FloatingActionButton(
        onPressed: () {
          Constant.assetsAudioPlayer.playOrPause();
        },
        child: const Icon(Icons.play_circle_fill),
      ),
    ],
  );
}

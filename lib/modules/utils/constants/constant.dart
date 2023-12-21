import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import '../tabs/audio/audio.dart';
import '../tabs/gallery/gallery.dart';
import '../tabs/video/video.dart';

class Constant {
  static List<Widget> tab_list = [
    AudioTab(),
    const VideoTab(),
    const GalleryTab()
  ];
  static Color appcolor = Colors.teal;
  static Color whiteColor = Colors.white;
  static Color blackColor = Colors.black;

  static AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  static void playAudio() {
    Constant.assetsAudioPlayer.open(
      Audio("assets/music/jay_shree_ram.mp3"),
    );
  }
}

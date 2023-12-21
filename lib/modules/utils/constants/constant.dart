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
}

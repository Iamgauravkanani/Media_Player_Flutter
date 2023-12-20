import 'package:flutter/material.dart';
import '../../../../utils/constants/constant.dart';

AppBar myAppBar() {
  return AppBar(
    toolbarHeight: 100,
    titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
    backgroundColor: Constant.appcolor,
    title: const Text("Media Player"),
    bottom: TabBar(
      labelColor: Constant.whiteColor,
      unselectedLabelColor: Constant.blackColor,
      indicatorColor: Constant.whiteColor,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: const <Tab>[
        Tab(
          icon: Icon(Icons.audiotrack),
          child: Text("Audio"),
        ),
        Tab(
          icon: Icon(Icons.slow_motion_video),
          child: Text("Video"),
        ),
        Tab(
          icon: Icon(Icons.photo),
          child: Text("Gallery"),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:media_player_11/modules/utils/tabs/audio/widgets/audio_controls.dart';
import '../../constants/constant.dart';

class AudioTab extends StatelessWidget {
  const AudioTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: audio_controls(),
      body: StreamBuilder(
        stream: Constant.assetsAudioPlayer.currentPosition,
        builder: (context, snapshot) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${snapshot.data?.inMinutes}:${snapshot.data?.inSeconds}:${snapshot.data?.inMilliseconds}",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

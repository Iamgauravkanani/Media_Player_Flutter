import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudioTab extends StatelessWidget {
  AudioTab({super.key});

  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  playAudio() {
    assetsAudioPlayer.open(
      Audio("assets/music/jay_shree_ram.mp3"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              assetsAudioPlayer.pause();
            },
            child: const Icon(Icons.pause),
          ),
          FloatingActionButton(
            onPressed: () {
              assetsAudioPlayer.play();
            },
            child: const Icon(Icons.play_arrow),
          ),
          FloatingActionButton(
            onPressed: () {
              playAudio();
            },
            child: const Icon(Icons.refresh),
          ),
          FloatingActionButton(
            onPressed: () {
              assetsAudioPlayer.playOrPause();
            },
            child: const Icon(Icons.play_circle_fill),
          ),
        ],
      ),
      body: StreamBuilder(
        stream: assetsAudioPlayer.currentPosition,
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

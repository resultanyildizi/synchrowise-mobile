import 'dart:developer';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:video_player/video_player.dart';

class MediaPlayer extends StatefulWidget {
  const MediaPlayer({Key? key}) : super(key: key);

  @override
  State<MediaPlayer> createState() => _MediaPlayerState();
}

class _MediaPlayerState extends State<MediaPlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    // _controller = VideoPlayerController.asset(
    //   'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    // );

    _initializeVideoPlayerFuture = _videoPlayerController.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      allowPlaybackSpeedChanging: false,
      allowFullScreen: false,
      cupertinoProgressColors: ChewieProgressColors(
        playedColor: primaryColor,
        bufferedColor: Colors.white,
        handleColor: Colors.white,
        backgroundColor: grayColor,
      ),
      materialProgressColors: ChewieProgressColors(
        playedColor: primaryColor,
        bufferedColor: Colors.white,
        handleColor: Colors.white,
        backgroundColor: grayColor,
      ),
      errorBuilder: (context, errorMessage) {
        return Text(errorMessage);
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: Chewie(controller: _chewieController),
          );
        } else {
          return AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

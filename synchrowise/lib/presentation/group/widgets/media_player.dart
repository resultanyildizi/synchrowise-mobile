import 'dart:developer';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/group_bloc/group_session_bloc/group_session_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:video_player/video_player.dart';

class MediaPlayer extends StatefulWidget {
  const MediaPlayer({Key? key}) : super(key: key);

  @override
  State<MediaPlayer> createState() => _MediaPlayerState();
}

class _MediaPlayerState extends State<MediaPlayer> {
  late GroupSessionBloc _groupSessionBloc;
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  void _updateMediaController() {
    final media = _groupSessionBloc.state.failureOrMediaOption.fold(
      () => null,
      (fom) => fom.fold((l) => null, (media) => media),
    );

    if (media != null) {
      _videoPlayerController = VideoPlayerController.file(media.file);

      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController!,
        allowPlaybackSpeedChanging: false,
        allowFullScreen: false,
        showOptions: false,
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
        customControls: MaterialControls(
          backgroundImage: appLogo,
          onTapToPause: (currentPosition) {
            log("paused and current position is $currentPosition");
          },
          onTapToPlay: (currentPosition) {
            log("playing and current position is $currentPosition");
          },
          onTapToUpdateCurrentPosition: (currentPosition) {
            log("currentPosition is $currentPosition");
          },
        ),
      );

      _videoPlayerController!.initialize();
    }

    setState(() {});
  }

  @override
  void initState() {
    _groupSessionBloc = context.read<GroupSessionBloc>();
    _updateMediaController();

    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GroupSessionBloc, GroupSessionState>(
      bloc: _groupSessionBloc,
      listener: (context, state) {
        _updateMediaController();
      },
      child: _chewieController == null
          ? Container()
          : AspectRatio(
              aspectRatio: _videoPlayerController!.value.aspectRatio,
              child: Chewie(controller: _chewieController!),
            ),
    );
  }
}

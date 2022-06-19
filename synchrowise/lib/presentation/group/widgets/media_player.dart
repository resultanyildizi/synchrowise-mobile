import 'package:chewie/chewie.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/application/group/group_session_bloc/group_session_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/core/media.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/presentation/helpers/wave_loading_indicator.dart';
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

      _videoPlayerController!.initialize().then((value) {
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
            backgroundColor:
                media.type == MediaType.audio ? Colors.transparent : null,
            backgroundImage:
                media.type == MediaType.audio ? appLogoMedium : null,
            onTapToPause: (currentPosition) {
              _groupSessionBloc.pauseMedia();
            },
            onTapToPlay: (currentPosition) {
              _groupSessionBloc.playMedia();
            },
            onTapToUpdateCurrentPosition: (currentPosition) {
              _groupSessionBloc.seekMedia();
            },
          ),
        );
        setState(() {});
      });

      setState(() {});
    } else {
      _videoPlayerController = null;
      _chewieController = null;
      setState(() {});
    }
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
    _groupSessionBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        _getMediaChangedBlocListener(),
        _getMediaFailureBlocListener(),
      ],
      child: BlocBuilder<GroupSessionBloc, GroupSessionState>(
        builder: (context, state) {
          return AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: _chewieController == null ? Colors.white : Colors.black,
              child: _chewieController == null
                  ? state.isProgressing
                      ? const SizedBox(
                          child: WaveLoadingIndicator(
                            color: secondaryColor,
                            size: 18,
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _groupSessionBloc.uploadMedia();
                          },
                          child: const Center(
                            child: Icon(
                              Icons.video_library,
                              color: secondaryColor,
                              size: 36,
                            ),
                          ),
                        )
                  : Chewie(controller: _chewieController!),
            ),
          );
        },
      ),
    );
  }

  BlocListener<GroupSessionBloc, GroupSessionState>
      _getMediaChangedBlocListener() {
    return BlocListener<GroupSessionBloc, GroupSessionState>(
      listenWhen: (p, c) => p.failureOrMediaOption != c.failureOrMediaOption,
      bloc: _groupSessionBloc,
      listener: (context, state) {
        _updateMediaController();
      },
    );
  }

  BlocListener<GroupSessionBloc, GroupSessionState>
      _getMediaFailureBlocListener() {
    return BlocListener<GroupSessionBloc, GroupSessionState>(
      bloc: _groupSessionBloc,
      listener: (context, state) {
        state.failureOrMediaOption.fold(
          () => null,
          (fom) {
            return fom.fold(
              (f) {
                f.map(
                  pickFailure: (_) {},
                  sizeFailure: (f) {
                    showErrorToast(
                      "media_size_error".tr(),
                      ToastGravity.BOTTOM,
                    );
                  },
                  unsupportedFailure: (f) {
                    showErrorToast(
                      "media_unsupported".tr(),
                      ToastGravity.BOTTOM,
                    );
                  },
                );
              },
              (_) {},
            );
          },
        );
      },
    );
  }
}

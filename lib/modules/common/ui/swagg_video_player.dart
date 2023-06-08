import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:cached_video_player/cached_video_player.dart';

class SwaggVideoPlayer extends StatefulWidget {

  final CachedVideoPlayerController controller;

  const SwaggVideoPlayer({
    super.key, 
    required this.controller,
  });

  @override
  State<SwaggVideoPlayer> createState() => _SwaggVideoPlayerState();
}

class _SwaggVideoPlayerState extends State<SwaggVideoPlayer> {

  @override
  Widget build(BuildContext context) {

    return Center(
      child: AspectRatio(
        aspectRatio: this.widget.controller.value.aspectRatio,      
        child: (this.widget.controller.value.isInitialized) 
        ? CachedVideoPlayer(this.widget.controller)
        : Container(
            margin: const EdgeInsets.symmetric(horizontal: 150),
            child: const LoadingIndicator(
              indicatorType: Indicator.ballPulse,
              colors: [Colors.white],
              strokeWidth: 2.0,
            ),
          ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:video_player/video_player.dart';

class MediaViewerPage extends StatefulWidget {

  final String url;

  const MediaViewerPage({
    super.key, 
    required this.url,
  });

  @override
  State<MediaViewerPage> createState() => _MediaViewerPageState();
}

class _MediaViewerPageState extends State<MediaViewerPage> {

  late VideoPlayerController controller;

  @override
  void initState() {
    
    this.controller = VideoPlayerController.network(this.widget.url);
    this.controller.initialize().then((value)=> setState(()=> {}));
    super.initState();
  }

  @override
  void dispose() {
    
    this.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>
        [
          Positioned.fill(child: _VideoPlayer(controller: this.controller)),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: kToolbarHeight),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Palette.current.primaryNeonGreen,
                  size: 24,
                ),
                onPressed: ()=> Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=> this.controller.play()),
    );
  }
}

class _VideoPlayer extends StatelessWidget {

  final VideoPlayerController controller;

  const _VideoPlayer({
    super.key, 
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {

    return Center(
      child: AspectRatio(
        aspectRatio: this.controller.value.aspectRatio,      
        child: (this.controller.value.isInitialized) 
        ? VideoPlayer(this.controller)
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

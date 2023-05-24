import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:swagapp/modules/common/ui/swagg_video_player.dart';

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

  late CachedVideoPlayerController controller;

  @override
  void initState() {
    
    this.controller = CachedVideoPlayerController.network(this.widget.url);
    this.initializeController();

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
          Positioned.fill(child: SwaggVideoPlayer(controller: this.controller)),
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
      floatingActionButton: _PlayButton(controller: controller),
    );
  }

  void initializeController() {

    this.controller.initialize().then((value){
      
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        
        setState((){});
        await this.controller.play();
      });
    });
  }
}

class _PlayButton extends StatefulWidget {

  final CachedVideoPlayerController controller;

  const _PlayButton({
    super.key,
    required this.controller,
  });

  @override
  State<_PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<_PlayButton> {

  @override
  void initState() {
    
    this.widget.controller.addListener(()=> this.listenControllerPostion());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return FloatingActionButton(
      onPressed: this.onTap,
      splashColor: Colors.transparent,
      backgroundColor: Palette.current.primaryNeonGreen,
      child: Icon(
        (this.widget.controller.value.isPlaying) 
        ? Icons.pause
        : Icons.play_arrow,
        color: Colors.black,
      ),
    );
  }

  void onTap() {

    (this.widget.controller.value.isPlaying) 
    ? this.widget.controller.pause()
    : this.widget.controller.play();
    
    setState((){});
  }

  void listenControllerPostion() {

    if(this.widget.controller.value.position == this.widget.controller.value.duration) {
      
      this.widget.controller.pause();
      setState((){});
    }
  }
}
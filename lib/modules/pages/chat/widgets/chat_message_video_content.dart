import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:cached_video_player/cached_video_player.dart';

class ChatMessageVideoContent extends StatefulWidget {

  final String url;

  const ChatMessageVideoContent({
    super.key, 
    required this.url,
  });

  @override
  State<ChatMessageVideoContent> createState() => _ChatMessageVideoContentState();
}

class _ChatMessageVideoContentState extends State<ChatMessageVideoContent> {

  late CachedVideoPlayerController controller;

  @override
  void initState() {
    
    this.controller = CachedVideoPlayerController.network(this.widget.url);
    this.controller.setVolume(0);

    this.initializeController(context.read<ChatBloc>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();
    Size size = MediaQuery.of(context).size;
    double videoSize = size.width * 0.55;
    bool isThereControllerState = this.isThereControllerState(chatBloc);

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: videoSize,
          maxHeight: videoSize,
        ),
        child: BlocBuilder<ChatBloc, ChatState>(
          bloc: chatBloc,
          builder: (BuildContext context, state)=> _Content(
            url: this.widget.url,
            isThereControllerState: isThereControllerState,
          ),
          buildWhen: (ChatState previous, ChatState current) {
            
            return (current.videoChatControllers.isNotEmpty) 
            ? current.videoChatControllers.last.value.isInitialized
            : false;
          },
        ),
      ),
    );
  }

  void initializeController(ChatBloc chatBloc) {

    this.controller.initialize().then((value){
      
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        
        await this.controller.play();
        await this.controller.pause();
        chatBloc.addMessageVideoController(this.controller);
      });
    });
  }

  bool isThereControllerState(ChatBloc chatBloc) {

    return chatBloc.state.videoChatControllers.any((CachedVideoPlayerController controller) {
      
      String url1 = controller.dataSource.substring(0, 50);
      String url2 = this.widget.url.substring(0, 50);

      return url1 == url2;
    });
  }
}

class _Content extends StatelessWidget {

  final String url;
  final bool isThereControllerState;

  const _Content({
    super.key, 
    required this.url,
    required this.isThereControllerState, 
  });

  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.read<ChatBloc>();

    return (this.isThereControllerState) 
      ? Builder(
          builder: (BuildContext context) { 

            CachedVideoPlayerController stateController = this.getController(chatBloc);
            double aspectRatio = stateController.value.aspectRatio;

            return AspectRatio(
              aspectRatio: aspectRatio,
              child: Stack(
                children: <Widget> 
                [
                  Positioned.fill(
                    child: _Player(
                      aspectRatio: aspectRatio, 
                      stateController: stateController,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            );
          }
        )
      : const _Loader();
  }

  CachedVideoPlayerController getController(ChatBloc chatBloc) {

    return chatBloc.state.videoChatControllers.firstWhere((CachedVideoPlayerController controller) {

      String url1 = controller.dataSource.substring(0, 50);
      String url2 = this.url.substring(0, 50);
      
      return url1 == url2;
    });
  }
}

class _Player extends StatelessWidget {

  final double aspectRatio;
  final CachedVideoPlayerController stateController;

  const _Player({
    super.key,
    required this.aspectRatio,
    required this.stateController,
  });

  @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Center(
        child: AspectRatio(
          aspectRatio: stateController.value.aspectRatio,      
          child: (stateController.value.isInitialized) 
          ? CachedVideoPlayer(stateController)
          : Container(
              margin: const EdgeInsets.symmetric(horizontal: 150),
              child: const LoadingIndicator(
                indicatorType: Indicator.ballPulse,
                colors: [Colors.white],
                strokeWidth: 2.0,
              ),
            ),
        ),
      ),
    );
  }
}

class _Loader extends StatelessWidget {

  const _Loader({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: SizedBox(
          width: 50,
          child: LoadingIndicator(
            indicatorType: Indicator.ballPulse,
            colors: [Colors.black.withOpacity(0.5)],
            strokeWidth: 2.0,
          ),
        ),
      ),
    );
  }
}




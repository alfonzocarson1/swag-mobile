import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:swagapp/modules/enums/chat_message_type.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:swagapp/modules/common/ui/swagg_video_player.dart';
import 'package:swagapp/modules/pages/media_viewer/media_viewer_page.dart';

class ChatMessageContent extends StatelessWidget {

  final String nickName;
  final BaseMessage message;
  final bool isMyMessage;

  const ChatMessageContent({
    super.key,
    required this.nickName,
    required this.message, 
    required this.isMyMessage, 
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>
      [
        (!this.isMyMessage) 
        ? Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              nickName,
              style: TextStyle(
                fontSize: 14,              
                fontWeight: FontWeight.lerp(FontWeight.w300, FontWeight.w400, 0.5),
                color: Palette.current.grey,
              ),
            ),
          )
        : const SizedBox.shrink(),
        _Content(isMyMessage: isMyMessage, message: message),
      ],
    );
  }
}

class _Content extends StatelessWidget {

  final bool isMyMessage;
  final BaseMessage message;

  const _Content({
    super.key,
    required this.isMyMessage,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {

    bool isFile = (this.message is FileMessage);
    bool isImage = (isFile) ? this.verifyIfFileIsImage() : false;

    String fileUrl = (isFile) ? (this.message as FileMessage).secureUrl! : '';

    return GestureDetector(
      child: Container(
        width: (this.isMyMessage) ? null : double.infinity,
        decoration: BoxDecoration(
          color: (!this.isMyMessage) 
          ? Palette.current.greyMessage
          : Palette.current.primaryNeonGreen,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: (isFile) 
        ? (isImage) 
          ? _MessageImage(url: fileUrl)
          : _MessageVideo(url: fileUrl)
        : Text(
          this.message.message,
          style: TextStyle(
            fontSize: 16, 
            color: (!this.isMyMessage) ? Colors.white : Colors.black,
          ),
        ),
      ),
      onTap: ()=> (!isImage)
      ? Navigator.push(
          context, 
          MaterialPageRoute(builder: (BuildContext context)=> MediaViewerPage(url: fileUrl),
        )) 
      : (){},
    );
  }

  bool verifyIfFileIsImage() {

    FileMessage message = this.message as FileMessage;

    if(message.type?.contains(ChatMessageType.image.textValue) ?? false) {
      return true;
    }
    else if(message.type?.contains(ChatMessageType.video.textValue) ?? false) {
      return false;
    }
    else return false;
  }
}

class _MessageImage extends StatefulWidget {

  final String url;

  const _MessageImage({
    super.key, 
    required this.url,
  });

  @override
  State<_MessageImage> createState() => _MessageImageState();
}

class _MessageImageState extends State<_MessageImage> with AutomaticKeepAliveClientMixin {

  @override
  Widget build(BuildContext context) {

    super.build(context);
    Size size = MediaQuery.of(context).size;
    double imageSize = (size.width * 0.65);

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: CachedNetworkImage(
        width: imageSize,
        height: imageSize,
        imageUrl: this.widget.url,
        fit: BoxFit.cover,
        placeholder: (BuildContext context, String url) {

          return Image(
            width: imageSize,
             height: imageSize,
            image: const AssetImage(AppImages.placeHolder),
          );
        },
        errorWidget: (BuildContext context, String url, dynamic error) {
          return Center(child: Text(S.current.chatErrorFile));
        },
      ),
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}

class _MessageVideo extends StatefulWidget {

  final String url;

  const _MessageVideo({
    super.key, 
    required this.url,
  });

  @override
  State<_MessageVideo> createState() => __MessageVideoState();
}

class __MessageVideoState extends State<_MessageVideo> with AutomaticKeepAliveClientMixin {

  late CachedVideoPlayerController controller;

  @override
  void initState() {
    
    this.controller = CachedVideoPlayerController.network(this.widget.url);
    this.controller.setVolume(0);

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

    super.build(context);
    Size size = MediaQuery.of(context).size;
    double videoSize = size.width * 0.65;
    double aspectRatio = this.controller.value.aspectRatio;

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: videoSize,
          maxHeight: videoSize,
        ),
        child: AspectRatio(
          aspectRatio: aspectRatio,
          child: Stack(
            children: <Widget> 
            [
              Positioned.fill(
                child: AspectRatio(
                  aspectRatio: aspectRatio,
                  child: SwaggVideoPlayer(controller: controller),
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
        ),
      ),
    );
  }

  void initializeController() {

    this.controller.initialize().then((value){
      
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        
        setState((){});
        await this.controller.play();
        await Future.delayed(const Duration(milliseconds: 10));
        await this.controller.pause();
      });
    });
  }
  
  @override
  bool get wantKeepAlive => true;
}


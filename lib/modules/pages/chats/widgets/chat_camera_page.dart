import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exif_rotation/flutter_exif_rotation.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:swagapp/modules/cubits/chat/chat_cubit.dart';

import '../../../common/utils/palette.dart';
import '../../../di/injector.dart';

enum CaptureMode { photo, video }

class ChatCamera extends StatefulWidget {
  const ChatCamera({super.key, required this.channel});

  final GroupChannel channel;

  
  @override
  _ChatCameraState createState() => _ChatCameraState();
}

class _ChatCameraState extends State<ChatCamera> {
  List<CameraDescription>? cameras;
  late CameraController controller;
  CaptureMode _captureMode = CaptureMode.photo;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    availableCameras().then((availableCameras) {
      cameras = availableCameras;

      if (cameras!.length > 0) {
        setState(() {
          controller = CameraController(
            cameras![0], 
            ResolutionPreset.high);
           
          controller.initialize().then((_) {
            if (!mounted) {
              return;
            }
             controller.lockCaptureOrientation(DeviceOrientation.portraitUp);
             
            setState(() {});
          });
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> _capture() async {
    if (_captureMode == CaptureMode.photo) {
      await _takePicture();
    } else {
      controller.value.isRecordingVideo
          ? await _stopVideoRecording()
          : await _startVideoRecording();
    }
  }

  Future<void> _takePicture() async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/Pictures/flutter_test';
    await Directory(dirPath).create(recursive: true);
    final String filePath = '$dirPath/${DateTime.now()}.jpg';

    if (controller.value.isTakingPicture) {
      return;
    }

    try {
      XFile file = await controller.takePicture();

      DeviceOrientation orientation = controller.value.deviceOrientation;

      if (mounted) {
        setState(() {});
        File tmpFile = File(file.path);
        final result = await ImageGallerySaver.saveFile(tmpFile.path).then((value) {    
        print('Image saved to the gallery');
       
      });
        if(orientation == DeviceOrientation.portraitUp){
           File rotatedImage = await FlutterExifRotation.rotateImage(
        path: tmpFile.path,
      );
      tmpFile = rotatedImage;
        }
        getIt<ChatCubit>().sendCameraFile(widget.channel, tmpFile, file.mimeType.toString());
        Navigator.of(context).pop();
        print("File Saved to Gallery $result");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> _startVideoRecording() async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/Movies/flutter_test';
    await Directory(dirPath).create(recursive: true);
    final String filePath = '$dirPath/${DateTime.now()}.mp4';

    if (controller.value.isRecordingVideo) {
      return;
    }

    try {
      await controller.startVideoRecording();
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  Future<void> _stopVideoRecording() async {
    if (!controller.value.isRecordingVideo) {
      return;
    }

    try {
      XFile file = await controller.stopVideoRecording();

      if (mounted) setState(() {});
      File tmpFile = File(file.path);
      final result = await ImageGallerySaver.saveFile(tmpFile.path).then((value) {
  
       // File(file.path).delete(); // delete the temporary file after saving to gallery
        print('Video saved to the gallery');
       
      });
      print("File Saved to Gallery $result");
      getIt<ChatCubit>().sendCameraFile(widget.channel, tmpFile, file.mimeType.toString());
       Navigator.of(context).pop();
      
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Palette.current.primaryNeonGreen,
          ),
          onPressed: () async {        
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Palette.current.blackAppbarBlackground,
       
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: CameraPreview(controller),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildControls(),
          ),
        ],
      ),
    );
  }

  Widget _buildControls() {
    return Container(
      color: Palette.current.blackAppbarBlackground,
      padding: const EdgeInsets.all(20.0),
      child: Container(
      color: Palette.current.blackAppbarBlackground,
      padding: const EdgeInsets.all(20.0),
      child: Column(
      children: <Widget>[
        SizedBox(
          height: 50,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  child: Text('Photo', style: TextStyle(color: _captureMode == CaptureMode.photo ? Palette.current.primaryNeonGreen : Colors.white)),
                  onPressed: () {
                    setState(() {
                      _captureMode = CaptureMode.photo;
                    });
                  },
                ),
                TextButton(
                  child: Text('Video', style: TextStyle(color: _captureMode == CaptureMode.video ? Palette.current.primaryNeonGreen  : Colors.white)),
                  onPressed: () {
                    setState(() {
                      _captureMode = CaptureMode.video;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        FloatingActionButton(
          backgroundColor: _captureMode == CaptureMode.photo
              ? Colors.white
              : (controller.value.isRecordingVideo ? Colors.red[800] : Colors.red),
          onPressed: _capture,
          child: Icon(
            _captureMode == CaptureMode.photo || !controller.value.isRecordingVideo
                ? Icons.circle
                : Icons.square,
            color: Colors.black,
          ),
        ),
      ],
      ),
      ),
    );
  }
}

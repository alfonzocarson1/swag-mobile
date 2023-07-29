import 'package:better_open_file/better_open_file.dart';
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;


class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: CameraAwesomeBuilder.awesome(
          saveConfig: SaveConfig.photoAndVideo(
            photoPathBuilder: ()async {
final dir = await getTemporaryDirectory();
              String fileName = DateTime.now().millisecondsSinceEpoch.toString();
              String tempFilePath = p.join(dir.path, '$fileName.jpg');

              // Here is where we save the file to the gallery using imageGallerySaver
              final savedResult = await ImageGallerySaver.saveFile(tempFilePath);
              if (savedResult["isSuccess"]) {
                return savedResult["filePath"];
              } else {
                throw Exception('Failed to save image');
              }

            },
            videoPathBuilder: () async{
              final dir = await getApplicationDocumentsDirectory();
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    return p.join(dir.path, '$fileName.mp4');
            },
            initialCaptureMode: CaptureMode.photo,
          ),
          enablePhysicalButton: true,
          filter: AwesomeFilter.AddictiveRed,
          flashMode: FlashMode.auto,
          aspectRatio: CameraAspectRatios.ratio_16_9,
          previewFit: CameraPreviewFit.fitWidth,
          onMediaTap: (mediaCapture) {
            OpenFile.open(mediaCapture.filePath);
          },
        ),
      ),
    );
  }
}
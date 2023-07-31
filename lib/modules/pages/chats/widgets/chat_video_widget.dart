// import 'package:flutter/material.dart';

// class VideoDisplay extends StatefulWidget {
//   final String videoUrl;

//   VideoDisplay(this.videoUrl);

//   @override
//   _VideoDisplayState createState() => _VideoDisplayState();
// }

// class _VideoDisplayState extends State<VideoDisplay> {
//   late final VideoPlayerController _controller;
//   late Future<void> _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     _controller = VideoPlayerController.network(widget.videoUrl);
//     _initializeVideoPlayerFuture = _controller.initialize();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _initializeVideoPlayerFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           // If the VideoPlayerController has finished initialization, use
//           // the data it provides to limit the aspect ratio of the VideoPlayer.
//           return AspectRatio(
//             aspectRatio: _controller.value.aspectRatio,
//             // Use the VideoPlayer widget to display the video.
//             child: VideoPlayer(_controller),
//           );
//         } else {
//           // If the VideoPlayerController is still initializing, show a
//           // loading spinner.
//           return CircularProgressIndicator();
//         }
//       },
//     );
//   }
// }

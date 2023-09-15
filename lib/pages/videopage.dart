import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:responsive_builder/responsive_builder.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;
  bool _isPlaying = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/vedio/video.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown and set state to refresh the widget.
        setState(() {});
        _controller.pause(); // Start playing the video immediately
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: ScreenTypeLayout.builder(
            mobile: (BuildContext context) => _buildMobileVideoPlayer(),
            desktop: (BuildContext context) => _buildDesktopVideoPlayer(),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                  _isPlaying = _controller.value.isPlaying;
                });
              },
              child: Icon(
                _isPlaying ? Icons.pause : Icons.play_circle_rounded,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileVideoPlayer() {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : CircularProgressIndicator(); // Show loading indicator until video is initialized
  }

  Widget _buildDesktopVideoPlayer() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  VideoPlayer(_controller),
                ],
              ),
            )
          : CircularProgressIndicator(), // Show loading indicator until video is initialized
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
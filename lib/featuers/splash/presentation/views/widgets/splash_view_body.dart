import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:video_player/video_player.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    initializeContoller();
    navigateToHome();
  }

  void initializeContoller() {
    _controller = VideoPlayerController.asset('assets/videos/video_splash.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
        });
      });
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 5), (){
      GoRouter.of(context).push(AppRouter.kHomeViewRouter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: 9/18,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        );
  }
}
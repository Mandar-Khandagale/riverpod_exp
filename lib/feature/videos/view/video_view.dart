import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_exp/feature/videos/widgets/video_player_demo.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class VideoViewPage extends StatelessWidget {
  const VideoViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.video.tr()),
      ),
      body: const SafeArea(
        child: VideoPlayer(),
      ),
    );
  }
}

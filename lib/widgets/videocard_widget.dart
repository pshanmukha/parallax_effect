import 'package:flutter/material.dart';
import 'package:parallax_effect/widgets/buildgradient.dart';
import 'package:parallax_effect/widgets/buildtitlesubtitle_widget.dart';
import 'package:parallax_effect/constants/constants.dart';
import 'package:parallax_effect/parallaxeffectWidgets/parallaxflowdelegate_horizontal.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({Key? key, required this.item, required this.isSelected})
      : super(key: key);

  final VideoItem item;
  final bool isSelected;

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;
  final GlobalKey _videoKey = GlobalKey();

  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.item.videoUrl);

    _controller
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..setVolume(0)
      ..initialize().then((_) => setState(() {}))
      ..play();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: widget.isSelected
          ? const EdgeInsets.symmetric(vertical: 16, horizontal: 4)
          : const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 6),
            blurRadius: 8,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Flow(
              delegate: ParallaxFlowDelegate(
                scrollable: Scrollable.of(context),
                listItemContext: context,
                backgroundImageKey: _videoKey,
              ),
              children: [
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(
                    _controller,
                    key: _videoKey,
                  ),
                ),
              ],
            ),
            const BuildGradientWidget(),
            BuildTitleAndSubtitle(
              title: widget.item.name,
              subTitle: widget.item.credits,
            ),
          ],
        ),
      ),
    );
  }
}

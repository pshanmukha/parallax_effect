import 'package:flutter/material.dart';
import 'package:parallax_effect/constants/constants.dart';
import 'package:parallax_effect/parallaxeffectWidgets/parallaxflowdelegate_vertical.dart';
import 'package:parallax_effect/widgets/buildgradient.dart';
import 'package:parallax_effect/widgets/buildtitlesubtitle_widget.dart';

class ImageItemCard extends StatefulWidget {
  const ImageItemCard({Key? key, required this.item}) : super(key: key);

  final ImageItem item;

  @override
  State<ImageItemCard> createState() => _ImageItemCardState();
}

class _ImageItemCardState extends State<ImageItemCard> {
  final GlobalKey _imageKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Flow(
                delegate: ParallaxFlowDelegateVertical(
                  scrollable: Scrollable.of(context),
                  listItemContext: context,
                  backgroundImageKey: _imageKey,
                ),
                children: [
                  Image.network(widget.item.imageUrl,
                  key: _imageKey,
          fit: BoxFit.cover,
                  )
                ],
                ),
              const BuildGradientWidget(),
              BuildTitleAndSubtitle(
                title: widget.item.name,
                subTitle: widget.item.country,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

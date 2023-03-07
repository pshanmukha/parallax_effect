import 'package:flutter/material.dart';
import 'package:parallax_effect/constants/constants.dart';
import 'package:parallax_effect/widgets/videocard_widget.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  _VideosScreenState createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.8);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: PageView.builder(
                controller: _pageController,
                itemCount: videoItems.length,
                itemBuilder: (context, index) {
                  return VideoCard(
                    item: videoItems[index],
                    isSelected: _selectedIndex == index,
                  );
                },
                onPageChanged: (i) => setState(() => _selectedIndex = i),
                ),
          ),
          
        ],
      ),
    );
  }
}

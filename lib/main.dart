import 'package:flutter/material.dart';
import 'package:parallax_effect/screens/images_screen.dart';
import 'package:parallax_effect/screens/videos_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parallax Videos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ParallaxEffectPageView(),
    );
  }
}

class ParallaxEffectPageView extends StatefulWidget {
  const ParallaxEffectPageView({Key? key}) : super(key: key);

  @override
  State<ParallaxEffectPageView> createState() => _ParallaxEffectPageViewState();
}

class _ParallaxEffectPageViewState extends State<ParallaxEffectPageView> {
  @override
  Widget build(BuildContext context) {
    late PageController _pageController = PageController();
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      onPageChanged: (_) {
        setState(() {
        });
      },
      children: const [
         ImagesScreen(),
         VideosScreen(),
      ],
    );
  }
}

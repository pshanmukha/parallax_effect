import 'package:flutter/material.dart';
import 'package:parallax_effect/constants/constants.dart';
import 'package:parallax_effect/widgets/imageitem_widget.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [
for (final item in imageItems)
            ImageItemCard(item: item,),
      ]),
    ),
    );
  }
}
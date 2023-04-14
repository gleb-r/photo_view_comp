import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view_example/screens/common/common_example_wrapper.dart';

void main() => runApp(MyApp());

ThemeData theme = ThemeData(
  primaryColor: Colors.black,
  backgroundColor: Colors.white10,
  fontFamily: 'PTSans',
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo View Example App',
      theme: theme,
      home: Scaffold(
        body: CommonExampleRouteWrapper(
          firstImageProvider: const AssetImage("assets/large-image.jpg"),
          secondImageProvider: const AssetImage("assets/large-image2.jpg"),
          minScale: PhotoViewComputedScale.contained * 0.8,
          maxScale: PhotoViewComputedScale.covered * 1.1,
          initialScale: PhotoViewComputedScale.contained * 1,
        ),
      ),
    );
  }
}

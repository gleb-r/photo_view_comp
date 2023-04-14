import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class CommonExampleRouteWrapper extends StatefulWidget {
  const CommonExampleRouteWrapper({
    this.firstImageProvider,
    this.secondImageProvider,
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialScale,
    this.basePosition = Alignment.center,
    this.filterQuality = FilterQuality.none,
    this.disableGestures,
    this.errorBuilder,
  });

  final ImageProvider? firstImageProvider;
  final ImageProvider? secondImageProvider;
  final LoadingBuilder? loadingBuilder;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final dynamic initialScale;
  final Alignment basePosition;
  final FilterQuality filterQuality;
  final bool? disableGestures;
  final ImageErrorWidgetBuilder? errorBuilder;

  @override
  State<CommonExampleRouteWrapper> createState() =>
      _CommonExampleRouteWrapperState();
}

class _CommonExampleRouteWrapperState extends State<CommonExampleRouteWrapper> {
  double position = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: PhotoView(
              firstImageProvider: widget.firstImageProvider,
              secondImageProvider: widget.secondImageProvider,
              minScale: widget.minScale,
              maxScale: widget.maxScale,
              initialScale: widget.initialScale,
              basePosition: widget.basePosition,
              filterQuality: widget.filterQuality,
              disableGestures: widget.disableGestures,
              errorBuilder: widget.errorBuilder,
              slidePosition: position,
            ),
          ),
          Slider(
              value: position,
              onChanged: (value) => setState(() {
                    position = value;
                  })),
        ],
      ),
    );
  }
}

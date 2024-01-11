import 'package:flutter/material.dart';

import 'progress_indicator.dart';
import 'space.dart';

const _defaultImageBorderRadius = BorderRadius.all(Radius.circular(15.0));

class HImageCarousel extends StatefulWidget {
  final List<ImageProvider> images;
  final BorderRadiusGeometry borderRadius;

  const HImageCarousel({
    super.key,
    required this.images,
    this.borderRadius = _defaultImageBorderRadius,
  });

  @override
  State<HImageCarousel> createState() => _HImageCarouselState();
}

class _HImageCarouselState extends State<HImageCarousel> {
  late final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ClipRRect(
        borderRadius: widget.borderRadius,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.black12,
          ),
          child: AspectRatio(
            aspectRatio: 343 / 257,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  children: [
                    for (final image in widget.images)
                      _CarouselImage(
                        image: image,
                      ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: _CarouselProgress(
                      pageCount: widget.images.length,
                      pageController: _pageController,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const _progressColorSteps = [
  Colors.black,
  Color(0x38000000),
  Color(0x2B000000),
  Color(0x1A000000),
  Color(0x0D000000),
];

class _CarouselProgress extends AnimatedWidget {
  final int pageCount;
  final PageController _pageController;

  const _CarouselProgress({
    required this.pageCount,
    required PageController pageController,
  })  : _pageController = pageController,
        super(listenable: pageController);

  Color _calculateColorForIndex(int index) {
    final diff = (index - (_pageController.page ?? 0.0)).abs();
    final t = diff.clamp(0.0, _progressColorSteps.length - 1.0);
    final tTruncated = t.toInt();

    if (t == tTruncated) {
      return _progressColorSteps[tTruncated];
    }

    final fromColor = _progressColorSteps[tTruncated];
    final toColor = _progressColorSteps[tTruncated + 1];

    return Color.lerp(fromColor, toColor, t - tTruncated)!;
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < pageCount; i++) ...[
              _ProgressDot(
                color: _calculateColorForIndex(i),
              ),
              if (i < pageCount - 1) const Space.horizontal(5.0),
            ],
          ],
        ),
      ),
    );
  }
}

class _ProgressDot extends StatelessWidget {
  final Color color;

  const _ProgressDot({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 7.0,
      child: DecoratedBox(
        decoration: ShapeDecoration(
          shape: const CircleBorder(),
          color: color,
        ),
      ),
    );
  }
}

class _CarouselImage extends StatelessWidget {
  final ImageProvider image;

  const _CarouselImage({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: image,
      fit: BoxFit.fill,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }

        final normalizedProgress = loadingProgress.expectedTotalBytes != null //
            ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
            : null;

        return Stack(
          children: [
            child,
            Center(
              child: HCircularProgressIndicator(
                value: normalizedProgress,
              ),
            ),
          ],
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return const Center(
          child: Icon(Icons.error_outline),
        );
      },
    );
  }
}

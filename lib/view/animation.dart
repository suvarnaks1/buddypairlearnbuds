import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class OrbitAnimation extends StatefulWidget {
  @override
  _OrbitAnimationState createState() => _OrbitAnimationState();
}

class _OrbitAnimationState extends State<OrbitAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ui.Image>>(
      future: _loadImages(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return CustomPaint(
            size: const Size(300, 300),
            painter: OrbitPainter(_controller, snapshot.data!),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Future<List<ui.Image>> _loadImages() async {
    final List<String> imagePaths = [
        'assets/images/phone-call.png',
      'assets/images/location.png',
      'assets/images/phone-call.png',
      'assets/images/phone-call.png',
      'assets/images/phone-call.png',
      'assets/images/phone-call.png',
      'assets/images/phone-call.png',
    ];

    return Future.wait(imagePaths.map((path) async {
      final data = await DefaultAssetBundle.of(context).load(path);
      final bytes = data.buffer.asUint8List();
      return decodeImageFromList(bytes);
    }));
  }
}

class OrbitPainter extends CustomPainter {
  final Animation<double> animation;
  final List<ui.Image> images;

  OrbitPainter(this.animation, this.images) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2.5;

    final orbitPaint = Paint()
      ..color = Colors.pink.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    // Draw orbit circles
    canvas.drawCircle(center, radius, orbitPaint);
    canvas.drawCircle(center, radius * 0.7, orbitPaint);
    canvas.drawCircle(center, radius * 0.4, orbitPaint);

    final double rotation = 2 * pi * animation.value;

    for (int i = 0; i < images.length; i++) {
      final double angle = (i / images.length) * 2 * pi + rotation;
      final double orbitRadius = (i % 2 == 0) ? radius : radius * 0.7;

      final double x = center.dx + orbitRadius * cos(angle);
      final double y = center.dy + orbitRadius * sin(angle);

      final imageRect = Rect.fromCenter(
        center: Offset(x, y),
        width: 40,
        height: 40,
      );

      final paintCircle = Paint()..color = Colors.pinkAccent.withOpacity(0.8);
      canvas.drawCircle(imageRect.center, 20, paintCircle);

      canvas.drawImageRect(
        images[i],
        Rect.fromLTWH(0, 0, images[i].width.toDouble(),
            images[i].height.toDouble()),
        imageRect,
        Paint(),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

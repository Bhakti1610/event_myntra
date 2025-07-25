import 'package:flutter/cupertino.dart';

class FancyBottomNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double fabRadius = 35.0;
    final double centerX = size.width / 2;
    final double fabMargin = 10;

    final Path path = Path();
    path.lineTo(centerX - fabRadius - fabMargin, 0);

    path.quadraticBezierTo(
      centerX - fabRadius,
      0,
      centerX - fabRadius + 8,
      20,
    );

    path.arcToPoint(
      Offset(centerX + fabRadius - 8, 20),
      radius: Radius.circular(fabRadius),
      clockwise: false,
    );

    path.quadraticBezierTo(
      centerX + fabRadius,
      0,
      centerX + fabRadius + fabMargin,
      0,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

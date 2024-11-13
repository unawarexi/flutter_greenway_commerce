import "package:flutter/material.dart";

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    //--------- FIRST CURVE FOR BOTTOM LEFT corner -----
    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    //--------- SECOND CURVE FOR STRAIGHT LINE TOWARDS THE RIGHT CORNER -----
    final secondCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
        secondCurve.dx, secondCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    //--------- THIRD CURVE FOR BOTTOM LEFT corner -----
    final thirdCurve = Offset(size.width, size.height - 20);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdCurve.dx, thirdCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

import 'package:flutter/material.dart';
class CustomContainer extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final pat=Path();
    final paint=Paint()..color=Color(0xff849FFF)..style=PaintingStyle.fill;
    pat.lineTo(0, size.height*.7);
    pat.quadraticBezierTo(size.width*.5, size.height+20, size.width, size.height*.7);
    pat.lineTo(size.width, 0);
    pat.lineTo(0, 0);
    pat.close();
    canvas.drawPath(pat, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}
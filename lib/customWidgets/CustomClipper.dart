import 'package:flutter/material.dart';

class MyWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    @override
    double w = size.width;
    double h = size.height;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.quadraticBezierTo(size.width * 1.0080000, size.height * 0.1500000,
        size.width, size.height * 0.2000000);
    path0.cubicTo(
        size.width * 0.8622500,
        size.height * 0.5030000,
        size.width * 0.4417500,
        size.height * 0.1680000,
        size.width * 0.3090000,
        size.height * 0.3840000);
    path0.cubicTo(
        size.width * 0.1577500,
        size.height * 0.5460000,
        size.width * 0.1452500,
        size.height * 0.7330000,
        size.width * 0.0020000,
        size.height * 0.5760000);
    path0.quadraticBezierTo(
        size.width * -0.0020000, size.height * 0.3780000, 0, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyWaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    @override
    double w = size.width;
    double h = size.height;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.quadraticBezierTo(size.width * 0.9962500, size.height * 0.2711667,
        size.width * 0.9950000, size.height * 0.0033333);
    path0.cubicTo(
        size.width * 0.7935000,
        size.height * -0.0258333,
        size.width * 0.8045000,
        size.height * 0.2918333,
        size.width * 0.7410000,
        size.height * 0.3880000);
    path0.cubicTo(
        size.width * 0.6441250,
        size.height * 0.5358333,
        size.width * 0.5023750,
        size.height * 0.5221667,
        size.width * 0.4015000,
        size.height * 0.5766667);
    path0.cubicTo(
        size.width * 0.2491250,
        size.height * 0.6420000,
        size.width * 0.1213750,
        size.height * 0.6106667,
        0,
        size.height * 0.7606667);
    path0.cubicTo(size.width * -0.0120000, size.height * 0.8305000,
        size.width * 0.0050000, size.height * 0.2508333, 0, size.height);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyWaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    @override
    double w = size.width;
    double h = size.height;

    Path path0 = Path();
    path0.moveTo(size.width * 0.3755000, size.height);
    path0.lineTo(size.width * 0.7630000, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, size.height * 0.8300000);
    path0.quadraticBezierTo(size.width * 0.9025000, size.height * 0.7818333,
        size.width * 0.8460000, size.height * 0.8733333);
    path0.cubicTo(
        size.width * 0.7728750,
        size.height * 1.0243333,
        size.width * 0.6008750,
        size.height * 0.8990000,
        size.width * 0.3755000,
        size.height);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

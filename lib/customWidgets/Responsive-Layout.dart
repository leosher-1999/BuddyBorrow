import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;

  final Widget Tab;
  const Responsive({required this.mobile, required this.Tab});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < 768) {
        return mobile;
      } else {
        return Tab;
      }
    }));
  }
}

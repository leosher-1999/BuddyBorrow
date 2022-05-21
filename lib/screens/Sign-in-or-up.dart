// ignore: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:buddyborrow/customWidgets/CustomClipper.dart';
import 'package:buddyborrow/customWidgets/CustomTextButton.dart';
import 'package:buddyborrow/customWidgets/Responsive-Layout.dart';
import 'package:buddyborrow/screens/Signup1.dart';
import 'package:buddyborrow/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../customWidgets/clipperContainer.dart';

class Signinorup extends StatefulWidget {
  const Signinorup({Key? key}) : super(key: key);

  @override
  State<Signinorup> createState() => _SigninorupState();
}

class _SigninorupState extends State<Signinorup> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return ScreenUtilInit(
      builder: ((context, child) => MaterialApp(
            home: Scrollbar(
              child: Scaffold(
                body: SafeArea(
                  child: Responsive(
                    mobile: Stack(
                      alignment: Alignment.center,
                      textDirection: TextDirection.rtl,
                      fit: StackFit.loose,
                      overflow: Overflow.visible,
                      clipBehavior: Clip.hardEdge,
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: ClipPath(
                            child: Container(
                                height: 300.h,
                                width: screensize.width,
                                color: const Color(0xFF8CE68C)),
                            clipper: MyWaveClipper(),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          height: height / 4,
                          child: ClipPath(
                            child: clipplerContainer(screensize: screensize),
                            clipper: MyWaveClipper2(),
                          ),
                        ),
                        Positioned(
                            top: 30.h,
                            right: 120.h,
                            child: Text(
                              'Buddy Borrow',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                              ),
                            )),
                        Positioned(
                          top: 150.h,
                          right: 120.h,
                          child: Row(
                            children: [
                              Image(
                                image: const AssetImage(
                                  'assets/BBLogo.png',
                                ),
                                height: 100.h,
                                width: 100.w,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 250.h,
                            right: screensize.width / 2.8,
                            child: Text(
                              'Welcome!',
                              style: TextStyle(
                                  fontSize: 25.sp, fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: 345.h,
                            right: 135.h,
                            child: Text(
                              'Continue To:',
                              style: TextStyle(
                                fontSize: 15.sp,
                              ),
                            )),
                        Positioned(
                            top: 370.h,
                            right: 30.h,
                            child: TextBtn1('SIGN IN', const Signin())),
                        Positioned(
                            top: 450.h,
                            right: 30.h,
                            child: TextBtn1('SIGN UP', const Signup1())),
                      ],
                    ),
                    Tab: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            textDirection: TextDirection.rtl,
                            fit: StackFit.loose,
                            overflow: Overflow.visible,
                            clipBehavior: Clip.hardEdge,
                            children: [
                              Positioned(
                                top: 0,
                                right: 0,
                                child: ClipPath(
                                  child: Container(
                                      height: 300.h,
                                      width: screensize.width,
                                      color: const Color(0xFF8CE68C)),
                                  clipper: MyWaveClipper(),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                height: height / 4,
                                child: ClipPath(
                                  child:
                                      clipplerContainer(screensize: screensize),
                                  clipper: MyWaveClipper2(),
                                ),
                              ),
                              Positioned(
                                  top: 10.h,
                                  right: width / 2.5,
                                  child: Row(
                                    children: [
                                      AutoSizeText(
                                        'Buddy Borrow',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  )),
                              Positioned(
                                top: 100.h,
                                right: width / 2.5,
                                child: Row(
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                        'assets/BBLogo.png',
                                      ),
                                      height: 100.h,
                                      width: 100.w,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: 200.h,
                                  right: screensize.width / 2.15,
                                  child: Text(
                                    'Welcome!',
                                    style: TextStyle(
                                        fontSize: width / 30,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Positioned(
                                  top: 270.h,
                                  right: screensize.width / 2.15,
                                  child: const Text(
                                    'Continue To:',
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  )),
                              Positioned(
                                  top: 370.h,
                                  right: screensize.width / 10,
                                  child: LandscapeButton(
                                      'SIGN IN', const Signin())),
                              Positioned(
                                  top: 450.h,
                                  right: screensize.width / 10,
                                  child: LandscapeButton(
                                      'SIGN UP', const Signup1())),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

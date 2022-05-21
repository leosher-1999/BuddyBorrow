import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../customWidgets/CustomClipper.dart';
import '../customWidgets/CustomTextButton.dart';
import '../customWidgets/Responsive-Layout.dart';
import '../customWidgets/clipperContainer.dart';
import 'Signup4.dart';

class SignUp5 extends StatefulWidget {
  const SignUp5({Key? key}) : super(key: key);

  @override
  State<SignUp5> createState() => _SignUp5State();
}

class _SignUp5State extends State<SignUp5> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final screensize = MediaQuery.of(context).size;
    return ScreenUtilInit(
        builder: (context, child) => MaterialApp(
              home: Scaffold(
                  backgroundColor: const Color(0xFFF3F3F3),
                  body: SafeArea(
                    child: Container(
                      child: Responsive(
                          mobile: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 0,
                                        child: ClipPath(
                                          child: clipplerContainer(
                                              screensize: screensize),
                                          clipper: MyWaveClipper(),
                                        )),
                                    Positioned(
                                        top: 10.h,
                                        child: const Arrowback(
                                          previous_screen: SignUp4(),
                                        )),
                                    Positioned(
                                        bottom: 0,
                                        child: ClipPath(
                                          child: Container(
                                            height: 200.h,
                                            width: screensize.width,
                                            color: const Color(0xFF8CE68C),
                                          ),
                                          clipper: MyWaveClipper3(),
                                        )),
                                    Positioned(
                                        top: 15.h,
                                        right: 110.h,
                                        child: const BorrowText()),
                                    Positioned(
                                        top: 100.h,
                                        right: 120.h,
                                        child: const ImageWidget()),
                                    Positioned(
                                        top: 210.h,
                                        right: 125.h,
                                        child: Center(
                                          child: Text(
                                            'SIGN UP',
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                    Positioned(
                                        top: 245.h,
                                        right: 105.h,
                                        child: Text(
                                          'Security Questions',
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                          ),
                                        )),
                                    Positioned(
                                        top: 280.h,
                                        right: width / 19.5,
                                        child: SignUpContainer(
                                          height: height,
                                          width: width,
                                          number: 3,
                                          question:
                                              'Lorem Ipsum dolor sit amet',
                                        )),
                                    Positioned(
                                        top: 500.h,
                                        child: Padding(
                                          padding: const EdgeInsets.all(32.0),
                                          child: TextBtn1(
                                              'Continue', const SignUp4()),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Tab: Row(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 0,
                                        child: ClipPath(
                                          child: clipplerContainer(
                                              screensize: screensize),
                                          clipper: MyWaveClipper(),
                                        )),
                                    Positioned(
                                        top: 10.h,
                                        child: const Arrowback(
                                          previous_screen: SignUp4(),
                                        )),
                                    Positioned(
                                        bottom: 0,
                                        child: ClipPath(
                                          child: Container(
                                            height: 200.h,
                                            width: screensize.width,
                                            color: const Color(0xFF8CE68C),
                                          ),
                                          clipper: MyWaveClipper3(),
                                        )),
                                    Positioned(
                                        top: 5.h,
                                        right: width / 3,
                                        child: const BorrowText()),
                                    Positioned(
                                        top: height / 8,
                                        right: width / 2.1,
                                        height: 70,
                                        width: 70,
                                        child: const ImageWidget()),
                                    Positioned(
                                        top: height / 3.9,
                                        right: width / 2.1,
                                        child: Center(
                                          child: Text(
                                            'SIGN UP',
                                            style: TextStyle(
                                                fontSize: 8.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                    Positioned(
                                        top: height / 3.5,
                                        right: width / 2.6,
                                        child: Text(
                                          'Security Questions',
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                          ),
                                        )),
                                    Positioned(
                                        top: height / 2.9,
                                        right: width / 3.44,
                                        child: SignUpContainer(
                                          height: height / 0.88,
                                          width: width / 2,
                                          number: 3,
                                          question:
                                              'Lorem Ipsum dolor sit amet?',
                                        )),
                                    Positioned(
                                        top: 500.h,
                                        child: Padding(
                                          padding: const EdgeInsets.all(32.0),
                                          child: TextBtn1(
                                              'Continue', const SignUp4()),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  )),
            ));
  }
}

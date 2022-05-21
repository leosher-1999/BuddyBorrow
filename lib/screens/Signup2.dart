import 'package:buddyborrow/screens/signin.dart';
import 'package:buddyborrow/screens/signup3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../customWidgets/CustomClipper.dart';
import '../customWidgets/CustomTextButton.dart';
import '../customWidgets/CustomTextForm.dart';
import '../customWidgets/Responsive-Layout.dart';
import '../customWidgets/clipperContainer.dart';
import 'Signup1.dart';

class Signup2 extends StatefulWidget {
  const Signup2({Key? key}) : super(key: key);

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  TextEditingController email = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController Postcode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        home: Scaffold(
          backgroundColor: const Color(0xFFF3F3F3),
          body: SafeArea(
            child: Responsive(
              mobile: Column(
                children: [
                  Expanded(
                    child: Scrollbar(
                      child: Column(
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
                                      previous_screen: Signup1(),
                                    )),
                                Positioned(
                                    bottom: 0,
                                    child: ClipPath(
                                      child: Container(
                                        height: 200.h,
                                        width: screensize.width,
                                        color: Color(0xFF8CE68C),
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
                                    child: Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Positioned(
                                    top: 240.h,
                                    right: 117.h,
                                    child: Text(
                                      'Personal Details',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                      ),
                                    )),
                                Positioned(
                                  top: 260.h,
                                  right: 15,
                                  child: Mytextform('Email Address (verified)',
                                      Icons.mail, false, email),
                                ),
                                Positioned(
                                  top: 315.h,
                                  right: 15,
                                  child: Mytextform(
                                      'Address', Icons.mail, false, Address),
                                ),
                                Positioned(
                                  top: 365.h,
                                  right: 15,
                                  child: Mytextform('Postcode', Icons.person,
                                      false, Postcode),
                                ),
                                Positioned(
                                    top: 465.h,
                                    right: 21.h,
                                    child:
                                        TextBtn1('Continue', const Signup3())),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                              child: clipplerContainer(screensize: screensize),
                              clipper: MyWaveClipper(),
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
                            top: 10.h,
                            child: const Arrowback(
                              previous_screen: Signup1(),
                            )),
                        Positioned(
                            top: 2.h, right: 480.h, child: const BorrowText()),
                        Positioned(
                          top: 80.h,
                          right: 700.h,
                          child: Image(
                            image: const AssetImage(
                              'assets/BBLogo.png',
                            ),
                            height: 120.h,
                            width: 120.h,
                          ),
                        ),
                        Positioned(
                            top: 200.h,
                            right: 720.h,
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 5.sp, fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: 230.h,
                            right: 615.h,
                            child: Text(
                              'Personal Details',
                              style: TextStyle(
                                fontSize: 8.sp,
                              ),
                            )),
                        Positioned(
                          top: 240.h,
                          right: 45.h,
                          child: Mytextform('Email address verified ',
                              Icons.mail, false, email),
                        ),
                        Positioned(
                          top: 300.h,
                          right: 45.h,
                          child: Mytextform(
                              'Address', Icons.person, false, Address),
                        ),
                        Positioned(
                          top: 360.h,
                          right: 55.h,
                          child: Mytextform(
                              'Postcode', Icons.person, false, Postcode),
                        ),
                        Positioned(
                            top: 500.h,
                            right: 55.h,
                            child:
                                LandscapeButton('Continue', const Signup1())),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

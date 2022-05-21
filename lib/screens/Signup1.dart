import 'package:buddyborrow/customWidgets/CustomClipper.dart';
import 'package:buddyborrow/screens/Signup2.dart';
import 'package:buddyborrow/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../customWidgets/CustomTextButton.dart';
import '../customWidgets/CustomTextForm.dart';
import '../customWidgets/Responsive-Layout.dart';
import '../customWidgets/clipperContainer.dart';

class Signup1 extends StatefulWidget {
  const Signup1({Key? key}) : super(key: key);

  @override
  State<Signup1> createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController First = TextEditingController();
    TextEditingController Middle = TextEditingController();
    TextEditingController Last = TextEditingController();
    TextEditingController DOB = TextEditingController();
    TextEditingController Phone = TextEditingController();
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
                                      previous_screen: Signin(),
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
                                    top: 200.h,
                                    right: 125.h,
                                    child: Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Positioned(
                                    top: 230.h,
                                    right: 104.h,
                                    child: Text(
                                      'Personal Details',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                      ),
                                    )),
                                Positioned(
                                  top: 260.h,
                                  right: 15,
                                  child: Mytextform(
                                      'First ', Icons.person, false, First),
                                ),
                                Positioned(
                                  top: 330.h,
                                  right: 15,
                                  child: Mytextform(
                                      'Middle', Icons.person, false, Middle),
                                ),
                                Positioned(
                                  top: 410.h,
                                  right: 15,
                                  child: Mytextform(
                                      'Surname', Icons.person, false, Last),
                                ),
                                Positioned(
                                  top: 470.h,
                                  right: 15,
                                  child: Mytextform('Date of Birth',
                                      Icons.person, false, DOB),
                                ),
                                Positioned(
                                  top: 540.h,
                                  right: 15,
                                  child: Mytextform('Phone Number(Verified)',
                                      Icons.person, false, Phone),
                                ),
                                Positioned(
                                    top: 610.h,
                                    right: 21.h,
                                    child:
                                        TextBtn1('Continue', const Signup2())),
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
                                color: Color(0xFF8CE68C),
                              ),
                              clipper: MyWaveClipper3(),
                            )),
                        Positioned(
                            top: 10.h,
                            child: const Arrowback(
                              previous_screen: Signin(),
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
                            right: 710.h,
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 5.sp, fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: 230.h,
                            right: 600.h,
                            child: Text(
                              'Personal Details',
                              style: TextStyle(
                                fontSize: 8.sp,
                              ),
                            )),
                        Positioned(
                          top: 240.h,
                          right: 30.h,
                          child:
                              Mytextform('First ', Icons.person, false, First),
                        ),
                        Positioned(
                          top: 290.h,
                          right: 30.h,
                          child:
                              Mytextform('Middle', Icons.person, false, Middle),
                        ),
                        Positioned(
                          top: 340.h,
                          right: 30.h,
                          child:
                              Mytextform('Surname', Icons.person, false, Last),
                        ),
                        Positioned(
                          top: 390.h,
                          right: 30.h,
                          child: Mytextform(
                              'Date of Birth', Icons.person, false, DOB),
                        ),
                        Positioned(
                          top: 440.h,
                          right: 30.h,
                          child: Mytextform('Phone Number(Verified)',
                              Icons.person, false, Phone),
                        ),
                        Positioned(
                            top: 520.h,
                            right: 35.h,
                            child:
                                LandscapeButton('Continue', const Signup2())),
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

// ignore: file_names
import 'package:buddyborrow/customWidgets/CustomClipper.dart';
import 'package:buddyborrow/customWidgets/CustomTextButton.dart';
import 'package:buddyborrow/customWidgets/CustomTextForm.dart';
import 'package:buddyborrow/customWidgets/Responsive-Layout.dart';
import 'package:buddyborrow/screens/Signup1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../customWidgets/clipperContainer.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    TextEditingController Email = TextEditingController();
    TextEditingController Password = TextEditingController();
    return ScreenUtilInit(
      builder: ((context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: const Color(0xFFF3F3F3),
              body: SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: screensize.height,
                    width: screensize.width,
                    child: Responsive(
                      mobile: Stack(children: [
                        Positioned(
                          top: 0.h,
                          child: ClipPath(
                            child: clipplerContainer(screensize: screensize),
                            clipper: MyWaveClipper(),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: ClipPath(
                            child: Container(
                                height: 180.h,
                                width: screensize.width,
                                color: const Color(0xFF8CE68C)),
                            clipper: MyWaveClipper2(),
                          ),
                        ),
                        Positioned(
                            right: 120.h,
                            top: 50.h,
                            child: Text(
                              'Buddy Borrow',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                              ),
                            )),
                        Positioned(
                          top: 120.h,
                          right: 120.h,
                          child: Row(
                            children: [
                              Image(
                                image: const AssetImage(
                                  'assets/BBLogo.png',
                                ),
                                height: 80.h,
                                width: 80.h,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 220.h,
                            right: 130.h,
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: 250.h,
                            right: 90.h,
                            child: Text(
                              'Sign in your account',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            )),
                        Positioned(
                          top: 280.h,
                          right: 15,
                          child: Mytextform('Email', Icons.email, false, Email),
                        ),
                        Positioned(
                          top: 350.h,
                          right: 15,
                          child: Mytextform(
                              'Password', Icons.lock, true, Password),
                        ),
                        Positioned(
                            top: 400.h,
                            right: 15.h,
                            child: TextButton(
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(color: Color(0xFFFF4848)),
                              ),
                              onPressed: () {},
                            )),
                        Positioned(
                            top: 450.h,
                            right: 35,
                            child: TextBtn1('Sign in', const Signup1())),
                        Positioned(
                            top: 500.h,
                            right: 65.h,
                            child: Row(
                              children: [
                                Text(
                                  'Create an Account?',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Color(0xFFBCBCBC)),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement<void, void>(
                                        context,
                                        MaterialPageRoute<void>(
                                            builder: (BuildContext context) =>
                                                const Signup1()),
                                      );
                                    },
                                    child: const Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Color.fromARGB(176, 0, 0, 0),
                                          fontSize: 15),
                                    ))
                              ],
                            ))
                      ]),
                      Tab: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0.h,
                                  child: ClipPath(
                                    child: clipplerContainer(
                                        screensize: screensize),
                                    clipper: MyWaveClipper(),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: ClipPath(
                                    child: Container(
                                        height: 180.h,
                                        width: screensize.width,
                                        color: const Color(0xFF8CE68C)),
                                    clipper: MyWaveClipper2(),
                                  ),
                                ),
                                Positioned(
                                    right: screensize.width / 3,
                                    top: 50.h,
                                    child: const Text(
                                      'Buddy Borrow',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    )),
                                Positioned(
                                  top: 120.h,
                                  right: 120.h,
                                  child: Row(
                                    children: [
                                      Image(
                                        image: const AssetImage(
                                          'assets/BBLogo.png',
                                        ),
                                        height: 80.h,
                                        width: 80.h,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    top: 220.h,
                                    right: 130.h,
                                    child: Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Positioned(
                                    top: 250.h,
                                    right: 90.h,
                                    child: Text(
                                      'Sign in your account',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                      ),
                                    )),
                                Positioned(
                                  top: 280.h,
                                  right: 15,
                                  child: Mytextform(
                                      'Email', Icons.email, false, Email),
                                ),
                                Positioned(
                                  top: 350.h,
                                  right: 15,
                                  child: Mytextform(
                                      'Password', Icons.lock, true, Password),
                                ),
                                Positioned(
                                    top: 400.h,
                                    right: 15.h,
                                    child: TextButton(
                                      child: const Text(
                                        'Forgot Password?',
                                        style:
                                            TextStyle(color: Color(0xFFFF4848)),
                                      ),
                                      onPressed: () {},
                                    )),
                                Positioned(
                                    top: 450.h,
                                    right: 35,
                                    child:
                                        TextBtn1('Sign in', const Signup1())),
                                Positioned(
                                    top: 500.h,
                                    right: 65.h,
                                    child: Row(
                                      children: [
                                        Text(
                                          'Create an Account?',
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Color(0xFFBCBCBC)),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacement<void,
                                                  void>(
                                                context,
                                                MaterialPageRoute<void>(
                                                    builder: (BuildContext
                                                            context) =>
                                                        const Signup1()),
                                              );
                                            },
                                            child: const Text(
                                              'Sign Up',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      176, 0, 0, 0),
                                                  fontSize: 15),
                                            ))
                                      ],
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

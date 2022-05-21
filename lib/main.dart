import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:buddyborrow/screens/Sign-in-or-up.dart';
import 'package:buddyborrow/screens/Signup1.dart';
import 'package:buddyborrow/screens/Signup2.dart';
import 'package:buddyborrow/screens/signin.dart';
import 'package:buddyborrow/screens/signup3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Signin(),
  ));
}

class BuddyBorrow extends StatefulWidget {
  const BuddyBorrow({Key? key}) : super(key: key);

  @override
  State<BuddyBorrow> createState() => _BuddyBorrowState();
}

class _BuddyBorrowState extends State<BuddyBorrow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buddy Borrow',
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/BBLogo.png'),
        nextScreen: const Signinorup(),
        splashTransition: SplashTransition.rotationTransition,
      ),
    );
  }
}

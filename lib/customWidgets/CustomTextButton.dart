import 'package:buddyborrow/screens/Sign-in-or-up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextBtn1 extends StatelessWidget {
  String text;
  Widget screen;
  TextBtn1(this.text, this.screen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt();
    int height = MediaQuery.of(context).size.height.toInt();

    return Container(
      height: height / 17,
      width: width / 1.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF5BB6EB)),
      child: TextButton(
        child: Text(text),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        style: TextButton.styleFrom(
            primary: Colors.white, textStyle: const TextStyle(fontSize: 18)),
      ),
    );
  }
}

class BorrowText extends StatelessWidget {
  const BorrowText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Buddy Borrow',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.sp,
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage(
        'assets/BBLogo.png',
      ),
      height: 80.h,
      width: 80.h,
    );
  }
}

class LandscapeButton extends StatelessWidget {
  String text;
  Widget screen;
  LandscapeButton(this.text, this.screen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt();
    int height = MediaQuery.of(context).size.height.toInt();

    return Container(
      height: height / 12,
      width: width / 1.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF5BB6EB)),
      child: TextButton(
        child: Text(text),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        style: TextButton.styleFrom(
            primary: Colors.white, textStyle: const TextStyle(fontSize: 18)),
      ),
    );
  }
}

class Arrowback extends StatelessWidget {
  final Widget previous_screen;
  const Arrowback({
    required this.previous_screen,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Color.fromARGB(255, 79, 158, 79),
        child: IconButton(
            onPressed: () {
              Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => previous_screen,
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class clipplerContainer extends StatelessWidget {
  const clipplerContainer({
    Key? key,
    required this.screensize,
  }) : super(key: key);

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300.h, width: screensize.width, color: const Color(0xFF92E592));
  }
}

class SignUpContainer extends StatelessWidget {
  const SignUpContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.number,
    required this.question,
  }) : super(key: key);

  final double height;
  final double width;
  final int number;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      height: height / 3.1,
      width: width / 1.1,
      child: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                child: Center(
                  child: Text(
                    number.toString(),
                    style: TextStyle(fontSize: 15.h, color: Colors.white),
                  ),
                ),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(3, 4),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF87C8EE),
                ),
              ),
            ),
            Expanded(
              child: Text(
                question,
                style: TextStyle(color: Colors.black, fontSize: 15.sp),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 13,
        ),
        const Text(
          'Answer',
          style: TextStyle(fontSize: 18, color: Color(0xFF92E592)),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
            height: height / 7,
            width: width / 1.3,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: GestureDetector(
                  child: const TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Type here...',
                  hintStyle: TextStyle(
                      color: Color(0xFFA1A2A3), fontStyle: FontStyle.italic),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                style: TextStyle(fontSize: 18),
              )),
            )),
      ]),
    );
  }
}

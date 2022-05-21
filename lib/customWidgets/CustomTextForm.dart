import 'package:flutter/material.dart';

class Mytextform extends StatelessWidget {
  String Hinttext;
  IconData myicon;
  bool Obscuretext;
  TextEditingController Controller = TextEditingController();

  Mytextform(this.Hinttext, this.myicon, this.Obscuretext, this.Controller,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt();
    int height = MediaQuery.of(context).size.height.toInt();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: height / 17,
        width: width / 1.2,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: const Color(0xFFEDFBED),
              radius: 20,
              child: Icon(myicon, size: 15, color: Colors.black),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: TextFormField(
                obscureText: Obscuretext,
                controller: Controller,
                decoration: InputDecoration.collapsed(hintText: Hinttext),
                onSaved: (value) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  VoidCallback callback;
  String text;
  double width = 220;
  double height = 55;

  CustomRoundButton(
      {required this.text,
      required this.callback,
      this.width = 220,
      this.height = 45,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 91, 125, 91),
          borderRadius: BorderRadius.circular(height/2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgScaffoldWidget extends StatelessWidget {
  Widget child;

  SvgScaffoldWidget({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child:SvgPicture.asset(
                "assets/background.svg",
                fit: BoxFit.cover,
              )
          ),
          child
        ],
      ),
    );
  }
}

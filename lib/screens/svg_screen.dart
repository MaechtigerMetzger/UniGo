import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgScreen extends StatelessWidget {
  const SvgScreen({Key? key}) : super(key: key);

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
          Text("Content")
        ],
      ),
    );
  }
}

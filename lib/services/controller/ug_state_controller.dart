import 'package:get/get.dart';


class UGStateController extends GetxController {
  // einfacher Ansatz, um auf (beliebige) Veränderungen zu reagieren
  var somethingChanged = 0.obs;

  void change() {
    somethingChanged++;
  }

}
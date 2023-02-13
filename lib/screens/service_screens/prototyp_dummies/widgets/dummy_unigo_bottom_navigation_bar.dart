import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../services/controller/ug_state_controller.dart';

class UnigoBottomNavigationsBar extends StatefulWidget {
  UnigoBottomNavigationsBar({Key? key}) : super(key: key);

  @override
  State<UnigoBottomNavigationsBar> createState() =>
      _UnigoBottomNavigationsBarState();
}

class _UnigoBottomNavigationsBarState extends State<UnigoBottomNavigationsBar> {
  UGStateController _controller = Get.find();

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        onTap: (index) {
          _controller.selectedPage.value = index;
        },
        currentIndex: _controller.selectedPage.value,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 200, 200, 200),
        selectedItemColor: Color.fromARGB(255, 105, 135, 100),
        unselectedItemColor: Color.fromARGB(255, 234, 247, 232),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_rental_outlined), label: "Fahrten"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: "Einstellungen"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UnigoBottomNavigationsBar extends StatefulWidget {
  UnigoBottomNavigationsBar({Key? key}) : super(key: key);

  @override
  State<UnigoBottomNavigationsBar> createState() =>
      _UnigoBottomNavigationsBarState();
}

class _UnigoBottomNavigationsBarState extends State<UnigoBottomNavigationsBar> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          selected = index;
        });
      },
      currentIndex: selected,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 200, 200, 200),
      selectedItemColor: Color.fromARGB(255, 105, 135, 100),
      unselectedItemColor: Color.fromARGB(255, 234, 247, 232),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.car_rental_outlined), label: "Fahrten"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: "Chat"),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined), label: "Einstellungen"),
      ],
    );
  }
}

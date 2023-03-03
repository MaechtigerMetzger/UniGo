import 'package:flutter/material.dart';

class StandorttwoScreen extends StatelessWidget {
  const StandorttwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(),
      backgroundColor: Color.fromARGB(255, 219, 237, 236),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            _headline(),
            SizedBox(
              height: 100,
            ),
            _buildInput('Name von Standort'),
            SizedBox(
              height: 40,
            ),
            _buildInput('Straße'),
            SizedBox(
              height: 40,
            ),
            _buildInput('Hausnummer'),
            SizedBox(
              height: 40,
            ),
            _buildInput('PLZ'),
            SizedBox(
              height: 40,
            ),
            _buildInput('Wohnort'),
            SizedBox(
              height: 120,
            ),
            _button(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

Container _button() {
  return Container(
    height: 32,
    width: 140,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      color: const Color.fromARGB(255, 18, 61, 51),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
    ),
    child: const Center(
      child: Text(
        'Speichern',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    ),
  );
}



Container _headline() {
  return Container(
    child: const Center(
      child: Text(
        'Standort',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

BottomNavigationBar _bottomNavigationBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: false,
    showSelectedLabels: false,
    backgroundColor: Colors.blueGrey,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.car_rental),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "",
      ),
    ],
  );
}


Container _buildInput(String text) {
  return Container(
    width: 250,
    height: 32,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
    ),
    child: Center(
      child: Text(text),
    ),
  );
}

import 'package:flutter/material.dart';

class StandortoneScreen extends StatefulWidget {
  const StandortoneScreen({Key? key}) : super(key: key);

  @override
  State<StandortoneScreen> createState() => _StandortoneScreenState();
}

class _StandortoneScreenState extends State<StandortoneScreen> {
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
              height: 40,
            ),
            _map(),
            SizedBox(
              height: 40,
            ),
            _buildInput('Adresse 1'),
            SizedBox(
              height: 20,
            ),
            _buildInput('Musteradresse'),
            SizedBox(
              height: 20,
            ),
            _buildInput('1'),
            SizedBox(
              height: 20,
            ),
            _buildInput('1234'),
            SizedBox(
              height: 20,
            ),
            _buildInput('Musterstadt'),
            SizedBox(
              height: 30,
            ),
            _button(),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Löschen',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
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

  Container _map() {
    return Container(
            color: Colors.green,
            height: 180,
            width: 180,
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

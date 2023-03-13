import 'package:flutter/material.dart';

import '../auswahl_screen.dart';
import '../chat/chat_screen.dart';
import '../co2_screen.dart';
import '../settings_screen.dart';

class StandortoneScreen extends StatefulWidget {
  const StandortoneScreen({Key? key}) : super(key: key);

  @override
  State<StandortoneScreen> createState() => _StandortoneScreenState();
}

class _StandortoneScreenState extends State<StandortoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 103, 111),
        centerTitle: true,
        title: const Text(
          "Datenschutz",
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 30, top: 0, right: 30, bottom: 0),
        height: 60,
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => CO2Screen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.directions_car, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AuswahlScreen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.chat, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.settings, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),
          ],
        ),
      ),
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
            _form(),
            SizedBox(
              height: 16,
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

  Container _form() {
    return Container(
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                        hintText: 'Musterstraße',
                        isDense: true, // Added this
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                        hintText: 'HausNr.',
                        isDense: true, // Added this
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                        hintText: 'PLZ',
                        isDense: true, // Added this
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                        hintText: 'Musterstadt',
                        isDense: true, // Added this
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                  ],
                ),
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
              color: const Color.fromARGB(255, 14, 116, 114),
              borderRadius: BorderRadius.circular(20),
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unigo_prototyp/widgets/svg_scaffold_widget.dart';

import 'fahrten_übersicht_screen.dart';

class FahrtSuchen extends StatelessWidget {
  const FahrtSuchen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Fahrt Suchen',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              //Platzhalter Karte
              _buildMap(),
              // Text Feld für Start... und Ziel...
              _buildStartEnd(),
              //Button für Vorgefertigte Ort, Datum, Zeit
              _buildDefaultValue(),
              //Button zum Senden
              _buildSende(),
            ],
          ),
        ),
      ),
    );
  }

//Button zum Senden der Daten
  Container _buildSende() {
    return Container(
      width: 250,
      height: 50,
      margin: const EdgeInsets.all(40.0),
      child: ElevatedButton(
        child: const Text('Suchen', style: TextStyle(fontSize: 20)),
        onPressed: () {
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.teal),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.teal),
              )),
        ),
      ),
    );
  }

//Textfelder für Start und Ziel
  Container _buildStartEnd() {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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
                hintText: 'Start...',
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
                hintText: 'Ziel...',
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(15),
              ),
            ),
          ],
        ),
      ),
    );
  }

//Platzhalter für die Karte
  Container _buildMap() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      height: 200,
      width: 300,
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      child: Image.network(
        'https://cdn.pixabay.com/photo/2019/03/08/15/55/map-4042585_960_720.png',
        height: 200,
        width: 300,
      ),
    );
  }

//Buttons für Vorgefertigte Passagen
  Container _buildDefaultValue() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.grey),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    )),
              ),
              child: Text('Ort'),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.grey),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    )),
              ),
              child: Text('Datum'),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.grey),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    )),
              ),
              child: Text('Zeit'),
            ),
          ],
        ),
      ),
    );
  }
}


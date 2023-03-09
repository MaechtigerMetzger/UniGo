import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../auswahl_screen.dart';
import '../chat/chat_screen.dart';
import '../co2_screen.dart';
import '../settings_screen.dart';


class FaqBuchungScreen extends StatelessWidget {
  const FaqBuchungScreen({Key? key}) : super(key: key);

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
          "Profil",
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
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            _buildUeberschrift(),
            SizedBox(
              height: 40,
            ),

            _buildBox(""),
            SizedBox(
              height: 10,
            ),



          ],
        ),
      ),
    );
  }

  Container _buildBox(String text) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 219, 237, 236),
        ),
        height: 300,
        width: 350,

        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical:50),
          //color: Colors.red,
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                      child: Text("Um eine Buchung zu löschen, gehe unten auf das kleine Autosymbol. Hier bekommst du nun eine Übersicht all deiner Buchungen und angebotener Fahrten und kannst diese anschauen, oder eben auch löschen.", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
    );

  }

  Container _buildEingabe(String text) {
    return Container(
        child: Center(
            child: Container(
              width: 250,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 219, 237, 236),
              ),
              child: Center(child: Text(text)),
            )
        )
    );
  }
  Container _buildUeberschrift() {
    return Container(
      // Anmelden
      child: Center(
        child: Text(
          "Buchung Löschen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

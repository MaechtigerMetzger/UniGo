import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';
import './settings/datenschutz_screen.dart';
import 'standort/standortone_screen.dart';
import 'benachrichtigung_screen.dart';
import 'chat/chat_screen.dart';
import 'co2_screen.dart';
import 'Divers/faq_screen.dart';
import 'auswahl_screen.dart';

import 'benachrichtigung_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Perform the desired action when the arrow is pressed
          },
        ),
        title: Text("Einstellungen", style: TextStyle(color: Colors.black)),
      ),
      //bottomNavigationBar: Navigation(),
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
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 150, 182, 194),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 90,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Max Mustermann",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "mustermann@gmail.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: ListTile(
                    leading: Icon(Icons.security),
                    title: Text("Datenschutz"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DatenschutzScreen()));
                      // Perform the desired action when the option is tapped
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Standort"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StandortoneScreen()));
                      // Perform the desired action when the option is tapped
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text("Benachrichtigungen"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BenachrichtigungScreen()));
                      // Perform the desired action when the option is tapped
                      //Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BenachrichtigungScreen(),
                          ));
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.chat),
                    title: Text("Chats"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreen()));
                      // Perform the desired action when the option is tapped
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.language),
                    title: Text("Sprache"),
                    onTap: () {
                      // Perform the desired action when the option is tapped
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.help),
                    title: Text("FAQ"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FaqScreen()));
                    },
                  ),
                )
              ],
            ),
          ),
          _buildRouteButton(context, 'Abmelden', LoginScreen()),
          _spacer(),
          Text(
            "Account löschen",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          _spacer(),
        ],
      ),
    );
  }
}

SizedBox _spacer() => SizedBox(height: 10);

ElevatedButton _buildRouteButton(
    BuildContext context, String text, Widget widget) {
  return ElevatedButton(
    onPressed: () {
      //Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ));
    },
    child: Text(text),
  );
}

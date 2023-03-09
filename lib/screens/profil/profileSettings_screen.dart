import 'package:flutter/material.dart';

import '../auswahl_screen.dart';
import '../chat/chat_screen.dart';
import '../co2_screen.dart';
import '../settings_screen.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          _buildHeadline("Profil"),
          SizedBox(height: 20),
          Container(
              color: Color.fromARGB(255, 104, 192, 185),
            child: Column(
              children: [
                SizedBox(height: 20),
                _buildUserSmall("Max Mustermann"),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          _buildSubHeadline("Sicherheit bei der Anmeldung"),
          Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.bathtub_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Passwort ändern",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.bathtub_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Login Aktivität",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.bathtub_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Gespeicherte Login-Informationen",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.bathtub_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Zweistufige Authentifizierung",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.bathtub_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "E-Mails von Unigo",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Text _buildSubHeadline(String data) {
    return Text(
          data,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        );
  }

  Container _buildPreferences(String data) {
    return Container(
      height: 24,
      width: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 104, 192, 185),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(data)),
    );
  }

  Text _buildCaption(String data) {
    return Text(
      data,
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }

  Container _buildHeadline(String text) {
    return Container(
      child: Center(
          child: Text(text,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    );
  }

  Row _buildUserSmall(String username) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.account_circle_rounded,
          size: 60,
          color: Colors.black
        ),
        Column(
          children: [
            Text(
              username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "max.mustermann@gmail.com",
              style: TextStyle(
                fontSize: 15,
              ),
            )
          ],
        )
      ],
    );
  }
}

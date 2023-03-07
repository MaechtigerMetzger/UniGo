import 'package:flutter/material.dart';

import '../../navigation.dart';
import '../auswahl_screen.dart';
import '../chat/chat_screen.dart';
import '../co2_screen.dart';
import '../settings_screen.dart';

class CookiesScreen extends StatefulWidget {
  @override
  CookieScreen createState() => CookieScreen();
}

class CookieScreen extends State<CookiesScreen> {
  bool ads1 = false;
  bool ads2 = false;
  bool ads3 = false;
  bool ads4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CO2Screen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.directions_car, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AuswahlScreen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.chat, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatScreen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.settings, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SettingsScreen()));
              },
            ),
          ],
        ),
      ),

      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 103, 111),
        centerTitle: true,
        title: const Text(
          "Cookies",
          style: TextStyle(color: Colors.white),
        ),
      ),

      backgroundColor: Color.fromARGB(255, 255, 255, 255),

      body: Column(
        children: [

          SizedBox(height: 50),

          // Werbe-Cookies
          Container(
            width: 270,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Werbe-Cookies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                    ),
                    Switch(
                      activeColor: Color.fromARGB(255, 161, 224, 169),
                      activeTrackColor: Color.fromARGB(255, 212, 240, 216),
                      inactiveThumbColor: Color.fromARGB(255, 207, 229, 229),
                      inactiveTrackColor: Color.fromARGB(255, 227, 245, 245),
                      value: ads1,
                      onChanged: (bool value) {
                        setState(() {
                          ads1 = value;
                          print(value);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
          ),

          const Divider(
            color: Color.fromARGB(255, 238, 238, 238),
            height: 25,
            thickness: 1.5,
            indent: 30,
            endIndent: 30,
          ),

          // Funktionale Cookies
          Container(
            width: 270,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Funktionale Cookies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                    ),
                    Switch(
                      activeColor: Color.fromARGB(255, 161, 224, 169),
                      activeTrackColor: Color.fromARGB(255, 212, 240, 216),
                      inactiveThumbColor: Color.fromARGB(255, 207, 229, 229),
                      inactiveTrackColor: Color.fromARGB(255, 227, 245, 245),
                      value: ads2,
                      onChanged: (bool value) {
                        setState(() {
                          ads2 = value;
                          print(value);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Divider(
            color: Color.fromARGB(255, 238, 238, 238),
            height: 25,
            thickness: 1.5,
            indent: 30,
            endIndent: 30,
          ),

          // Performance Cookies
          Container(
            width: 270,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Performance-Cookies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                    ),
                    Switch(
                      activeColor: Color.fromARGB(255, 161, 224, 169),
                      activeTrackColor: Color.fromARGB(255, 212, 240, 216),
                      inactiveThumbColor: Color.fromARGB(255, 207, 229, 229),
                      inactiveTrackColor: Color.fromARGB(255, 227, 245, 245),
                      value: ads3,
                      onChanged: (bool value) {
                        setState(() {
                          ads3 = value;
                          print(value);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Divider(
            color: Color.fromARGB(255, 238, 238, 238),
            height: 25,
            thickness: 1.5,
            indent: 30,
            endIndent: 30,
          ),

          // Andere Cookies
          Container(
            width: 270,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Andere Cookies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                    ),
                    Switch(
                      activeColor: Color.fromARGB(255, 161, 224, 169),
                      activeTrackColor: Color.fromARGB(255, 212, 240, 216),
                      inactiveThumbColor: Color.fromARGB(255, 207, 229, 229),
                      inactiveTrackColor: Color.fromARGB(255, 227, 245, 245),
                      value: ads4,
                      onChanged: (bool value) {
                        setState(() {
                          ads4 = value;
                          print(value);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }
}

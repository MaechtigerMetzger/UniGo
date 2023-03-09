import 'package:flutter/material.dart';
import 'fahrt_suche_screen.dart';
import 'fahrt_hinzufuegen_screen.dart';
import 'co2_screen.dart';
import 'auswahl_screen.dart';
import 'chat/chat_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CO2Screen()));
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SettingsScreen()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 219, 237, 236),
        body: Scrollbar(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Text(
                  "999 KG",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                Text(
                  "CO2 erspart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "125",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                Text(
                  "Punkte",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "130 KM",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                Text(
                  "gefahren",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 100),
                _buildRouteButton(context, 'Fahrt Suchen', FahrtSuchen()),
                SizedBox(height: 20),
                _buildRouteButton(
                    context, 'Fahrt Hinzufügen', FahrtHinzufuegenScreenI()),
              ],
            ),
          ),
        ));
  }

  Container _buildButtonblau(text) {
    return Container(
      height: 55,
      width: 220,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 122, 211, 209),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Container _buildButtongruen(text) {
    return Container(
      height: 55,
      width: 220,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 161, 224, 169),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

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

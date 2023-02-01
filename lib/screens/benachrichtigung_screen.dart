import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BenachrichtigungScreen extends StatefulWidget {
  @override
  _BenachrichtigungScreenState createState() => _BenachrichtigungScreenState();
}

class _BenachrichtigungScreenState extends State<BenachrichtigungScreen> {
  bool _value = false;

  void _toggleValue(bool value) {
    setState(() {
      _value = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black),
          onPressed: () {
            // Perform the desired action when the arrow is pressed
          },
           ),
          title: Text("Einstellungen",style: TextStyle(color:Colors.black)),
        ),
      body: Column(
        children: [
          SwitchListTile(
            value: _value,
            onChanged: _toggleValue,
            title: Text('Push-Benachrichtigung'),
          ),
          SwitchListTile(
            value: _value,
            onChanged: _toggleValue,
            title: Text('Nachrichtenanfragen'),
          ),
          SwitchListTile(
            value: _value,
            onChanged: _toggleValue,
            title: Text('Nachrichten'),
          ),
          SwitchListTile(
            value: _value,
            onChanged: _toggleValue,
            title: Text('Vibration'),
          ),
        ],
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
    );
  }
}
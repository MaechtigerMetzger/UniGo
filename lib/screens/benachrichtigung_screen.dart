import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BenachrichtigungScreen extends StatefulWidget {
  @override
  _BenachrichtigungScreenState createState() => _BenachrichtigungScreenState();
}

class _BenachrichtigungScreenState extends State<BenachrichtigungScreen> {
  bool _valuePush = false;
  bool _valueAnfrage = true;
  bool _valueNachrichten = false;
  bool _valueVibration = false;

  void _toggleValuePush(bool valuePush) {
    setState(() {
      _valuePush = valuePush;
    });
  }

  void _toggleValueAnfrage(bool valueAnfrage) {
    setState(() {
      _valueAnfrage = valueAnfrage;
    });
  }

  void _toggleValueNachrichten(bool valueNachrichten) {
    setState(() {
      _valueNachrichten = valueNachrichten;
    });
  }
  void _toggleValueVibration(bool valueVibration) {
    setState(() {
      _valueVibration = valueVibration;
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
          title: Text("Benachrichtigungen",style: TextStyle(color:Colors.black)),
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SwitchListTile(
            value: _valuePush,
            onChanged: _toggleValuePush,
            title: Text('Push-Benachrichtigung'),
          ),
          SwitchListTile(
            value: _valueAnfrage,
            onChanged: _toggleValueAnfrage,
            title: Text('Nachrichtenanfragen'),
          ),
          SwitchListTile(
            value: _valueNachrichten,
            onChanged: _toggleValueNachrichten,
            title: Text('Nachrichten'),
          ),
          SwitchListTile(
            value: _valueVibration,
            onChanged: _toggleValueVibration,
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
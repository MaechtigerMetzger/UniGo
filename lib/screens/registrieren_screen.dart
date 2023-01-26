import 'package:flutter/material.dart';

class RegistrierenScreen extends StatelessWidget {
  const RegistrierenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 237, 236),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          _buildLogo(),
          SizedBox(
            height: 120,
          ),
          _buildUeberschrift(),
          SizedBox(
            height: 70,
          ),
          _buildEingabe("E-Mail Adresse"),
          SizedBox(
            height: 50,
          ),
          _buildEingabe("Passwort"),
          SizedBox(
            height: 8,
          ),
          Text(
            "Passwort vergessen?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 130,
          ),
          Container(
            height: 32,
            width: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 14, 116, 114),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Anmelden",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Registrieren",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildEingabe(String text) {
    return Container(
      width: 250,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        color: Colors.white,
      ),
      child: Center(child: Text(text)),
    );
  }

  Container _buildUeberschrift() {
    return Container(
      // Anmelden
      child: Center(
        child: Text(
          "Anmelden",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  Container _buildLogo() {
    return Container(
      width: 100,
      height: 70,
      color: Color.fromARGB(255, 217, 217, 217),
      child: Center(
        child: Text("Logo"),
      ),
    );
  }

}

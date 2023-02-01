import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          _buildEingabe("Suche"),
          SizedBox(
            height: 40,
          ),
          _buildBox(""),
          SizedBox(
            height: 10,
          ),
          _buildBox(""),
          SizedBox(
            height: 10,
          ),
          _buildBox(""),
          SizedBox(
            height: 10,
          ),
          _buildBox(""),
          SizedBox(
            height: 10,
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
        child: Center(
            child: Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 219, 237, 236),
              ),

              child: Center(
                child: Text(
                "Mustermail",
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ),
            )
        )
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
          "E-Mails",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34,
          ),
        ),
      ),
    );
  }
}

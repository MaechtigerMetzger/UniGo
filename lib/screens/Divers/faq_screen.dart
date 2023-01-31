import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

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
      body: Column(
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
        ],
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
                  "Frage",
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


  Container _buildUeberschrift() {
    return Container(
      // Anmelden
      child: Center(
        child: Text(
          "FAQ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34,
          ),
        ),
      ),
    );
  }
}

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
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          _buildUeberschrift(),
          SizedBox(
            height: 30,
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
        height: 100,
        width: 350,

            child: Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 35, vertical:0),
                child: Text(
                  "?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 55, vertical:0),
                    margin: EdgeInsets.all(0),
                    child:  Text(
                      "Frage",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
            ]
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

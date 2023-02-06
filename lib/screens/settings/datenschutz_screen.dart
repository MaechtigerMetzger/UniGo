import 'package:flutter/material.dart';

class DatenschutzScreen extends StatefulWidget {
  @override
  DatenschutzzScreen createState() => DatenschutzzScreen();
}

class DatenschutzzScreen extends State<DatenschutzScreen> {
  bool ads1 = false;

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

      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: const Text('Datenschutz', style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
      ),

      backgroundColor: Color.fromARGB(255, 255, 255, 255),

      body: Column(
        children: [

          SizedBox(height: 50),

          // Privatsphäre
          Container(
            width: 290,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Privatsphäre", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Aktivitätsstatus
          Container(
            width: 290,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.account_circle_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    Text("Aktivitätsstatus", style: TextStyle(fontSize: 18,),
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
            height: 20,
          ),

          // Blockierte Kontakte
          Container(
            width: 290,
            height: 40,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.block,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    Text("Blockierte Kontakte", style: TextStyle(fontSize: 18,),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(

          ),

          // 1 Blockierter Kontakt
          Container(
            width: 290,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                    ),
                    Text("1 Blockierter Kontakt", style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 83, 83, 83)),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // Datenberechtigung
          Container(
            width: 290,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Datenberechtigung", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Cookies
          Container(
            width: 290,
            height: 40,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.cookie_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    Text("Cookies", style: TextStyle(fontSize: 18,),
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

import 'package:flutter/material.dart';

class AuthentifizierungScreen extends StatefulWidget {
  @override
  AuthentifizierungsScreen createState() => AuthentifizierungsScreen();
}

class AuthentifizierungsScreen extends State<AuthentifizierungScreen> {
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
        title: const Text('Zweistufige \n Authentifizierung', style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
      ),

      backgroundColor: Color.fromARGB(255, 255, 255, 255),

      body: Column(
        children: [

          SizedBox(height: 50),

          // Sicherheitscode
          Container(
            width: 270,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sicherheitscode", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
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
            height: 10,
          ),


          Container(
            width: 270,
            height: 50,
            //color: Colors.red,
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                        child: Text("Indem du dies aktivierst, werdern wir dir einen Sicherheitscode zusenden, wenn du dich anmeldest.", style: TextStyle(fontSize: 14,),
                        )
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
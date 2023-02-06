import 'package:flutter/material.dart';

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
        title: const Text('Cookies', style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
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

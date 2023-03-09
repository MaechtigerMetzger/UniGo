import 'package:flutter/material.dart';
import 'co2_screen.dart';
import 'auswahl_screen.dart';
import 'chat/chat_screen.dart';
import 'settings_screen.dart';

class PunkteScreen extends StatelessWidget {
  const PunkteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          backgroundColor: const Color.fromARGB(255, 77, 103, 111),
          title: const Text(
            "Belohnungen",
            style: TextStyle(color: Colors.white),
          ),
        ),

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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Scrollbar(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: const Text("125",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  child: const Text('Punkte',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 50.0),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50),
                              backgroundColor:
                              Color.fromARGB(255, 219, 237, 236),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 40),
                              textStyle: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          child: const Text('Gutschein 1',
                              style: TextStyle(color: Colors.black)),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50),
                              backgroundColor:
                              Color.fromARGB(255, 219, 237, 236),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 40),
                              textStyle: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          child: const Text('Gutschein 2',
                              style: TextStyle(color: Colors.black)),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50),
                              backgroundColor:
                              Color.fromARGB(255, 219, 237, 236),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 40),
                              textStyle: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          child: const Text('Gutschein 3',
                              style: TextStyle(color: Colors.black)),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50),
                              backgroundColor:
                              Color.fromARGB(255, 219, 237, 236),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 40),
                              textStyle: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          child: const Text('Gutschein 4',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

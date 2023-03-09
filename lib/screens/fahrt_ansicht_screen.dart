import 'package:flutter/material.dart';
import './chat/chat_screen.dart';
import 'co2_screen.dart';
import 'auswahl_screen.dart';
import 'settings_screen.dart';

class FahrtAnsichtScreen extends StatelessWidget {
  const FahrtAnsichtScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 103, 111),
        title: const Text(
          "Fahrt Ansicht",
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => CO2Screen()));
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),
          ],
        ),
      ),

      backgroundColor: Color.fromARGB(255, 219, 237, 236),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 25),
                  // Fahrt Start
                  Container(
                    width: 360,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFF68C0B9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 24, top: 15),
                            child: _buildCaption("Startpunkt: 7:30 Uhr"),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    // Fahrt Ziel
                    width: 360,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFF68C0B9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 24, top: 15),
                            child: _buildCaption("Zielpunkt: 8:00 Uhr"),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildUser("Max Mustermann"),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: _buildRouteButton(context, 'Chat', ChatScreen()),
            ),
            SizedBox(height: 20),
            Container(
              width: 360,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: _buildCaption("Über Mich"),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text("Hi ich bin Max, 23 Jahre alt."),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: _buildCaption("Präferenzen"),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: _buildPreferences("Raucher"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: _buildPreferences("Musik"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: _buildPreferences("E-Auto"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: _buildPreferences("Tiere"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 360,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: _buildCaption("User Bewertung"),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.bathtub_outlined,
                            size: 50,
                            color: Color.fromARGB(255, 104, 192, 185),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.bathtub_outlined,
                            size: 50,
                            color: Color.fromARGB(255, 104, 192, 185),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.bathtub_outlined,
                            size: 50,
                            color: Color.fromARGB(255, 104, 192, 185),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.bathtub_outlined,
                            size: 50,
                            color: Color.fromARGB(255, 104, 192, 185),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 360,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: _buildCaption("Fahrzeuge"),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text("Mazda CX 5"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Icon(
                            Icons.directions_car_outlined,
                            size: 50,
                            color: Color.fromARGB(255, 104, 192, 185),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 50,
                        color: Color.fromARGB(255, 104, 192, 185),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  Container _buildPreferences(String data) {
    return Container(
      height: 24,
      width: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 104, 192, 185),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(data)),
    );
  }

  Text _buildCaption(String data) {
    return Text(
      data,
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }

  Row _buildUser(String username) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.account_circle_rounded,
          size: 120,
          color: Color.fromARGB(255, 104, 192, 185),
        ),
        Text(
          username,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        )
      ],
    );
  }
}

ElevatedButton _buildRouteButton(
    BuildContext context, String text, Widget widget) {
  return ElevatedButton(
    onPressed: () {
      //Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ));
    },
    child: Text(text),
  );
}

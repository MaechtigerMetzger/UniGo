import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

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
        title: Text("Einstellungen",style: TextStyle(color:Colors.black)),
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
      backgroundColor: Color.fromARGB(255, 219, 237, 236),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 150, 182, 194),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://www.pngfind.com/pngs/m/610-6104451_image-placeholder-png-user-profile-placeholder-image-png.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Max Mustermann",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "mustermann@gmail.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                Center(
                  child: ListTile(
                    leading: Icon(Icons.security),
                    title: Text("Datenschutz"),
                    onTap: () {
                      // Perform the desired action when the option is tapped
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Standort"),
                    onTap: () {
                      // Perform the desired action when the option is tapped
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text("Benachrichtigungen"),
                    onTap: () {
                      // Perform the desired action when the option is tapped
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.chat),
                    title: Text("Chats"),
                    onTap: () {
                      // Perform the desired action when the option is tapped
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.language),
                    title: Text("Sprache"),
                    onTap: () {
                      // Perform the desired action when the option is tapped
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(Icons.help),
                    title: Text("FAQ"),
                    onTap: () {
                    },
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop<int>(context, 1);
            },
            child: Container(
              width: 122,
              height: 31,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 110, 106),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                    "Abmelden",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          _spacer(),
    Text(
    "Account löschen",
    style: TextStyle(
    fontWeight: FontWeight.bold,
      color: Colors.red,
    ),
    ),
        _spacer(),
        ],
      ),
    );
  }
}

SizedBox _spacer() => SizedBox(height:10);

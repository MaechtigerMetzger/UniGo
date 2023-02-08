import 'package:flutter/material.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 103, 111),
        centerTitle: true,
        title: const Text(
          "Profil",
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        selectedIconTheme: IconThemeData(color: Colors.white60),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: const Color.fromARGB(255, 77, 103, 111),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          _buildHeadline("Profil"),
          SizedBox(height: 20),
          Container(
              color: Color.fromARGB(255, 104, 192, 185),
            child: Column(
              children: [
                SizedBox(height: 20),
                _buildUserSmall("Max Mustermann"),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          _buildSubHeadline("Sicherheit bei der Anmeldung"),
          Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.bathtub_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Passwort ändern",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.bathtub_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Login Aktivität",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.bathtub_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Gespeicherte Login-Informationen",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.bathtub_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Zweistufige Authentifizierung",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.bathtub_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "E-Mails von Unigo",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Text _buildSubHeadline(String data) {
    return Text(
          data,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
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
        color: Colors.grey,
      ),
    );
  }

  Container _buildHeadline(String text) {
    return Container(
      child: Center(
          child: Text(text,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    );
  }

  Row _buildUserSmall(String username) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.account_circle_rounded,
          size: 60,
          color: Colors.black
        ),
        Column(
          children: [
            Text(
              username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "max.mustermann@gmail.com",
              style: TextStyle(
                fontSize: 15,
              ),
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ChatSettingScreen extends StatelessWidget {
  const ChatSettingScreen({Key? key}) : super(key: key);

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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20, //anders programmieren!
              ),
              Text("<-", //Platzhalter
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 180, //anders programmieren!
              ),
              _buildTitle(),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Text("Archivierte Chats",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              _buildText("Chats archivieren"),
              SizedBox(
                width: 50,
              ),
              Text("xx"), //Platzhalter
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Text("Backups & Verlauf",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Text("xx",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 15,
              ),
              _buildText("Chat-Backup"),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Text("xx",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 15,
              ),
              _buildText("Chatverlauf"),
            ],
          ),
          SizedBox(
            height: 190,
          ),
          _buildSpeicherButton(),
        ],
      ),
    );
  }

  Container _buildSpeicherButton() {
    return Container(
      height: 32,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 14, 116, 114)),
      child: Center(
          child: Text("Speichern",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ))),
    );
  }

  Container _buildText(String text) {
    return Container(
      child: Center(child: Text(text),

      ),
    );
  }

  Container _buildTitle() {
    return Container(
      //Anmelden
      child: Center(
        child: Text(
          "Chats",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
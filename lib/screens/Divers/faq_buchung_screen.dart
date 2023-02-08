import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class FaqBuchungScreen extends StatelessWidget {
  const FaqBuchungScreen({Key? key}) : super(key: key);

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
            icon: SvgPicture.asset('assets/icons/Bachelorprojekt_Icons_negativ_Home.svg', width: 30, color: Color.fromARGB(255, 223, 237, 237),),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Bachelorprojekt_Icons_negativ_Car.svg', width: 30, color: Color.fromARGB(255, 223, 237, 237),),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Bachelorprojekt_Icons_negativ_Chat.svg', width: 30, color: Color.fromARGB(255, 223, 237, 237),),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Bachelorprojekt_Icons_negativ_Settings.svg', width: 30, color: Color.fromARGB(255, 223, 237, 237),),
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
              height: 40,
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
        height: 300,
        width: 350,

        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical:50),
          //color: Colors.red,
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                      child: Text("Um eine Buchung zu löschen, gehe unten auf das kleine Autosymbol. Hier bekommst du nun eine Übersicht all deiner Buchungen und angebotener Fahrten und kannst diese anschauen, oder eben auch löschen.", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
    );

  }

  Container _buildEingabe(String text) {
    return Container(
        child: Center(
            child: Container(
              width: 250,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 219, 237, 236),
              ),
              child: Center(child: Text(text)),
            )
        )
    );
  }
  Container _buildUeberschrift() {
    return Container(
      // Anmelden
      child: Center(
        child: Text(
          "Buchung Löschen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

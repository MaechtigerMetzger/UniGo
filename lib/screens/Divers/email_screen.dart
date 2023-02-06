import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key}) : super(key: key);

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
          _buildEingabe("Suche"),
          SizedBox(
            height: 40,
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

                width: 100,
                height: 60,
                child: Text("?",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                    color: Color.fromARGB(255, 114, 147, 145)
                ),
                ),

                decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    color: Color.fromARGB(255, 194, 223, 222)),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical:0),
              ),

          Expanded(
              child: Container(
                transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
              child: ListTile(
                title:  Text("Mustermail", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, ),),
                subtitle: Text('Lorem ipsum dolor sit\namet, consetetur sadd',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromARGB(255, 67, 67, 67)),),
              ),
          ),
          ),
            ]
        )
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
          "E-Mails",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34,
          ),
        ),
      ),
    );
  }
}

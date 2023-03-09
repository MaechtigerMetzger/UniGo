import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/svg_scaffold_widget.dart';
import 'home_screen_main.dart';

class RegistrierenScreen extends StatelessWidget {
  const RegistrierenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgScaffoldWidget(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            _buildLogo(),
            SizedBox(
              height: 120,
            ),
            _buildUeberschrift(),
            SizedBox(
              height: 70,
            ),
            _buildEingabe(),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 130,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: _buildAnmeldeButton(),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  Container _buildAnmeldeButton() {
    return Container(
      height: 32,
      width: 150,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 14, 116, 114),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "Registrieren",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Container _buildEingabe() {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.teal),
                ),
                hintText: 'Benutzername',
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.teal),
                ),
                hintText: 'E-Mail',
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.teal),
                ),
                hintText: 'Passwort',
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.teal),
                ),
                hintText: 'Passwort wiederholen',
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildUeberschrift() {
    return Container(
      // Anmelden
      child: Center(
        child: Text(
          "Anmelden",
          style: TextStyle(
            fontSize: 27,
          ),
        ),
      ),
    );
  }

  Container _buildLogo() {
    return Container(
      width: 225,
      height: 60,
      //color: Color.fromARGB(255, 217, 217, 217),
      child: Center(
        child: SvgPicture.asset(
          "assets/RZ_Logo_UniGo.svg",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

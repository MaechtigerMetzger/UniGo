import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unigo_prototyp/screens/home_screen.dart';
import 'package:unigo_prototyp/widgets/svg_scaffold_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            _buildEingabe("E-Mail Adresse"),
            SizedBox(
              height: 50,
            ),
            _buildEingabe("Passwort"),
            SizedBox(
              height: 8,
            ),
            Text(
              "Passwort vergessen?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
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
              height: 8,
            ),
            Text(
              "Registrieren",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
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
          "Anmelden",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Container _buildEingabe(String text) {
    return Container(
      width: 250,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        color: Colors.white,
      ),
      child: Center(child: Text(text)),
    );
  }

  Container _buildUeberschrift() {
    return Container(
      // Anmelden
      child: Center(
        child: Text(
          "Anmelden",
          style: TextStyle(
            fontSize: 24,
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
        )
        ,
      ),
    );
  }
}

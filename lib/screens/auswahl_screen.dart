import 'package:flutter/material.dart';
import 'package:unigo_prototyp/screens/dialog_test_screen.dart';
import 'package:unigo_prototyp/screens/fahrten/fahrt_hinzufuegen_screen.dart';
import 'package:unigo_prototyp/screens/home_screen.dart';
import 'package:unigo_prototyp/screens/login_screen.dart';
import 'package:unigo_prototyp/screens/profil/profile_screen.dart';
import 'package:unigo_prototyp/screens/registrieren_screen.dart';
import 'package:unigo_prototyp/widgets/svg_scaffold_widget.dart';

import 'fahrt_hinzufuegen_screen.dart';
import 'fahrt_suche_screen.dart';
import 'fahrten_übersicht_screen.dart';

class AuswahlScreen extends StatelessWidget {
  const AuswahlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgScaffoldWidget(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildRouteButton(context, "HomeScreen", HomeScreen()),
          _spacer(),
          _buildRouteButton(context, "Dialog Test", DialogTestScreen()),
          _spacer(),
          _buildRouteButton(context, "Login Screen", LoginScreen()),
          _spacer(),
          _buildRouteButton(context, "Registrieren Screen", RegistrierenScreen()),
          _spacer(),
          _buildRouteButton(context, "Fahrt hinzufügen", FahrtHinzufuegenScreen()),
          _spacer(),
          _buildRouteButton(context, "Profil", ProfileScreen()),
          _spacer(),
          _buildRouteButton(context, "Fahrt HinzufügenI", FahrtHinzufuegenScreenI()),
          _spacer(),
          _buildRouteButton(context, "Fahrt Suchen", FahrtSuchen()),
          _spacer(),
          _buildRouteButton(context, "Fahrt Übersicht", FahrtUebersicht()),
        ],
      ),
    ));
  }

  SizedBox _spacer() => SizedBox(height:10);

  ElevatedButton _buildRouteButton(
      BuildContext context, String text, Widget widget) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget,
            ));
      },
      child: Text(text),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unigo_prototyp/screens/Divers/email_screen.dart';
import 'package:unigo_prototyp/screens/Divers/faq_buchung_screen.dart';
import 'package:unigo_prototyp/screens/Divers/faq_screen.dart';
import 'package:unigo_prototyp/screens/dialog_test_screen.dart';
import 'package:unigo_prototyp/screens/fahrten/fahrt_hinzufuegen_screen.dart';
import 'package:unigo_prototyp/screens/home_screen.dart';
import 'package:unigo_prototyp/screens/login_screen.dart';
import 'package:unigo_prototyp/screens/profil/profile_screen.dart';
import 'package:unigo_prototyp/screens/punkte_screen.dart';
import 'package:unigo_prototyp/screens/registrieren_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/angebot_list_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/nutzer_list_screen.dart';
import 'package:unigo_prototyp/screens/settings/authentifizierung_screen.dart';
import 'package:unigo_prototyp/screens/settings/cookies_screen.dart';
import 'package:unigo_prototyp/screens/settings/datenschutz_screen.dart';
import 'package:unigo_prototyp/widgets/svg_scaffold_widget.dart';

import '../services/controller/ug_state_controller.dart';
import 'fahrt_hinzufuegen_screen.dart';
import 'fahrt_suche_screen.dart';
import 'fahrten_übersicht_screen.dart';

class AuswahlScreen extends StatelessWidget {
  //UGStateController _controller = Get.put(UGStateController());

  AuswahlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgScaffoldWidget(
        child: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRouteButton(context, "NutzerListScreen", NutzerListScreen()),
            _spacer(),
            _buildRouteButton(
                context, "AngebotListScreen", AngebotListScreen()),
            _spacer(),
            _buildRouteButton(context, "HomeScreen", HomeScreen()),
            _spacer(),
            _buildRouteButton(context, "Dialog Test", DialogTestScreen()),
            _spacer(),
            _buildRouteButton(context, "Login Screen", LoginScreen()),
            _spacer(),
            _buildRouteButton(
                context, "Registrieren Screen", RegistrierenScreen()),
            _spacer(),
            _buildRouteButton(
                context, "Fahrt hinzufügen", FahrtHinzufuegenScreen()),
            _spacer(),
            _buildRouteButton(context, "Profil", ProfileScreen()),
            _spacer(),
            _buildRouteButton(
                context, "Fahrt HinzufügenI", FahrtHinzufuegenScreenI()),
            _spacer(),
            _buildRouteButton(context, "Fahrt Suchen", FahrtSuchen()),
            _spacer(),
            _buildRouteButton(context, "Fahrt Übersicht", FahrtUebersicht()),
            _spacer(),
            _buildRouteButton(context, "Emails", EmailScreen()),
            _spacer(),
            _buildRouteButton(context, "FAQ", FaqScreen()),
            _spacer(),
            _buildRouteButton(context, "FAQ Buchung", FaqBuchungScreen()),
            _spacer(),
            _buildRouteButton(context, "Cookies", CookiesScreen()),
            _spacer(),
            _buildRouteButton(
                context, "Authentifizierung", AuthentifizierungScreen()),
            _spacer(),
            _buildRouteButton(context, "Datenschutz", DatenschutzScreen()),
            _spacer(),
            _buildRouteButton(context, "Punkte", PunkteScreen()),
          ],
        ),
      ),
    ));
  }

  SizedBox _spacer() => SizedBox(height: 10);

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
}

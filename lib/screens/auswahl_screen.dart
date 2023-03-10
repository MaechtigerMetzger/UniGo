import 'package:flutter/material.dart';
import 'package:unigo_prototyp/screens/Divers/email_screen.dart';
import 'package:unigo_prototyp/screens/Divers/faq_buchung_screen.dart';
import 'package:unigo_prototyp/screens/Divers/faq_screen.dart';
import 'package:unigo_prototyp/screens/chat/chatmessage.dart';
import 'package:unigo_prototyp/screens/chat/chatsetting_screen.dart';
import 'package:unigo_prototyp/screens/dialog_test_screen.dart';
import 'package:unigo_prototyp/screens/home_screen_main.dart';
import 'package:unigo_prototyp/screens/login_screen.dart';
import 'package:unigo_prototyp/screens/profil/profileSettings_screen.dart';
import 'package:unigo_prototyp/screens/profil/profile_screen.dart';
import 'package:unigo_prototyp/screens/punkte_screen.dart';
import 'package:unigo_prototyp/screens/registrieren_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/angebot_list_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/nutzer_list_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/dummy_home_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/maps/map_screen.dart';
import 'package:unigo_prototyp/screens/settings/authentifizierung_screen.dart';
import 'package:unigo_prototyp/screens/settings/cookies_screen.dart';
import 'package:unigo_prototyp/screens/settings/datenschutz_screen.dart';
import 'package:unigo_prototyp/screens/standort/standortone_screen.dart';
import 'package:unigo_prototyp/screens/standort/standortthree.dart';
import 'package:unigo_prototyp/screens/standort/standorttwo_screen.dart';
import 'package:unigo_prototyp/widgets/svg_scaffold_widget.dart';
import './chat/chat_screen.dart';
import 'settings_screen.dart';
import 'fahrt_hinzufügenMitDaten_screen.dart';
import 'fahrt_bearbeiten_screen.dart';
import 'fahrt_ansicht_screen.dart';
import 'co2_screen.dart';
import 'fahrt_hinzufuegen_screen.dart';
import 'fahrt_suche_screen.dart';
import 'fahrten_übersicht_screen.dart';
import 'settings_screen.dart';
import 'package:unigo_prototyp/widgets/svg_scaffold_widget.dart';

class AuswahlScreen extends StatelessWidget {
  AuswahlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgScaffoldWidget(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildRouteButton(context, "MapScreen", MapScreen()),
                _spacer(),
                _buildRouteButton(context, "DummyHomeScreen", DummyHomeScreen()),
                _spacer(),
                _buildRouteButton(context, "NutzerListScreen", NutzerListScreen()),
                _spacer(),
                _buildRouteButton(
                    context, "AngebotListScreen", AngebotListScreen()),
                _spacer(),
                _buildRouteButton(context, "HomeScreen", HomeScreen()),
                _spacer(),
                _buildRouteButton(
                    context, "Authentifizierung", AuthentifizierungScreen()),
                _spacer(),
                _buildRouteButton(context, "Dialog Test", DialogTestScreen()),
                _spacer(),
                _buildRouteButton(context, "Chat", ChatScreen()),
                _spacer(),
                _buildRouteButton(context, "Chat Settings", ChatSettingScreen()),
                _spacer(),
                _buildRouteButton(context, "Login Screen", LoginScreen()),
                _spacer(),
                _buildRouteButton(
                    context, "Registrieren Screen", RegistrierenScreen()),
                _spacer(),
                _buildRouteButton(context, "Profil", ProfileScreen()),
                _spacer(),
                _buildRouteButton(context, "Profil Settings", ProfileSettingsScreen()),
                _spacer(),
                _buildRouteButton(
                    context, "Fahrt HinzufügenI", FahrtHinzufuegenScreenI()),
                _spacer(),
                _buildRouteButton(context, "Fahrt Hinzufügen Mit Daten",
                    FahrtHinzufuegenMitDatenScreenI()),
                _spacer(),
                _buildRouteButton(
                    context, "Fahrt Bearbeiten", FahrtBearbeitenScreen()),
                _spacer(),
                _buildRouteButton(context, "Fahrt Suchen", FahrtSuchen()),
                _spacer(),
                _buildRouteButton(context, "Fahrt Übersicht", FahrtUebersicht()),
                _spacer(),
                _buildRouteButton(context, "Fahrt Ansicht", FahrtAnsichtScreen()),
                _spacer(),
                _buildRouteButton(context, "Emails", EmailScreen()),
                _spacer(),
                _buildRouteButton(context, "FAQ", FaqScreen()),
                _spacer(),
                _buildRouteButton(context, "FAQ Buchung", FaqBuchungScreen()),
                _spacer(),
                _buildRouteButton(context, "Cookies", CookiesScreen()),
                _spacer(),
                _buildRouteButton(context, "Datenschutz", DatenschutzScreen()),
                _spacer(),
                _buildRouteButton(context, "Punkte", PunkteScreen()),
                _spacer(),
                _buildRouteButton(context, "Standort1", StandortoneScreen()),
                _spacer(),
                _buildRouteButton(context, "Standort2", StandorttwoScreen()),
                _spacer(),
                _buildRouteButton(context, "Standort3", StandortthreeScreen()),
                _spacer(),
                _buildRouteButton(context, "Settings", SettingsScreen()),
                _buildRouteButton(context, "DialogTest Screen", DialogTestScreen()),
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

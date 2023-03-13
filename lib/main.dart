import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unigo_prototyp/screens/auswahl_screen.dart';
import 'package:unigo_prototyp/screens/co2_screen.dart';
import 'package:unigo_prototyp/screens/login_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/pre_loading_screen.dart';
import 'package:unigo_prototyp/screens/settings/datenschutz_screen.dart';

// Design in
// https://www.figma.com/file/KG73Ctua7GSmwbwu3uWXvG/Prototyp-1?node-id=0%3A1&t=qwvKkf7XLdVeYxtk-0

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Map<int, Color> color =
    {
      50:Color.fromRGBO(14, 116, 114, .1),
      100:Color.fromRGBO(14, 116, 114, .2),
      200:Color.fromRGBO(14, 116, 114, .3),
      300:Color.fromRGBO(14, 116, 114, .4),
      400:Color.fromRGBO(14, 116, 114, .5),
      500:Color.fromRGBO(14, 116, 114, .6),
      600:Color.fromRGBO(14, 116, 114, .7),
      700:Color.fromRGBO(14, 116, 114, .8),
      800:Color.fromRGBO(14, 116, 114, .9),
      900:Color.fromRGBO(14, 116, 114, 1),
    };
    MaterialColor colorCustom = MaterialColor(0xFF0E7472, color);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'UniGo Preview',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: LoginScreen(),
      //home: DatenschutzScreen(),
      //home: MyStatefulWidget(),
    );
  }
}

/*
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int currentIndex = 0;
  final screens = [
    //Home
    CO2Screen(),
    //Meine Buchungen/Fahrten > fehlt
    AuswahlScreen(),
    //Chat
    ChatScreen(),
    //Settings
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 30,
        currentIndex: currentIndex,
        onTap: (int index) => setState( () => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Meine Buchungen/Fahrten',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
*/
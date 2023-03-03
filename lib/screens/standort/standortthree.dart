import 'package:flutter/material.dart';

class StandortthreeScreen extends StatefulWidget {
  const StandortthreeScreen({Key? key}) : super(key: key);

  @override
  State<StandortthreeScreen> createState() => _StandortthreeScreenState();
}

class _StandortthreeScreenState extends State<StandortthreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      bottomNavigationBar: _bottomNavigationBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            _headline(),
            SizedBox(
              height: 60,
            ),
            _eintrag('Adresse1', 'Mustermannstraße 2 \n 12345 \n Musterstadt'),
            SizedBox(
              height: 20,
            ),
            _eintrag('Adresse2', 'Mustermannstraße 3 \n 12345 \n Musterstadt'),
          ],
        ),
      ),
    );
  }

  Container _eintrag(String text1, String text2) {
    return Container(
      width: 350,
      height: 150,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Color.fromARGB(255, 131, 213, 194),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

Container _headline() {
  return Container(
    child: const Center(
      child: Text(
        'Standort',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

BottomNavigationBar _bottomNavigationBar() {
  return BottomNavigationBar(
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
  );
}
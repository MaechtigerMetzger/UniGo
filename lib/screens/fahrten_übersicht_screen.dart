import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unigo_prototyp/widgets/svg_scaffold_widget.dart';
import 'package:intl/intl.dart';

class FahrtUebersicht extends StatelessWidget {
  const FahrtUebersicht({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Fahrten Übersicht',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //Aktuelles Datum
          _buildDate(),
          //Übersicht Fahrten
          _buildFahrt0(),
          _buildFahrt1(),
          _buildFahrt2(),
          _buildFahrt3(),
          _buildFahrt4(),
          _buildFahrt5(),
        ],
      ),
    );
  }

  //Aktuelles Datum
  Container _buildDate() {
    String cdate = DateFormat("dd, MMMM, yyyy").format(DateTime.now());
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 65,
      width: 550,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(20),
      child: Text(
        cdate,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.left,
      ),
    );
  }

  //Platzhalter für die Karte
  InkWell _buildFahrt0() {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.teal,
        ),
        height: 110,
        width: 550,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text('Musterstart'),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Icon(Icons.arrow_downward),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Text('09.45 Uhr'),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text('Hochschule Fulda'),
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}

InkWell _buildFahrt1() {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal,
      ),
      height: 110,
      width: 550,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text('Musterstart'),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Icon(Icons.arrow_downward),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text('10.15 Uhr'),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text('Hochschule Fulda'),
            ),
          ),
        ],
      ),
    ),
    onTap: () {},
  );
}

InkWell _buildFahrt2() {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal,
      ),
      height: 110,
      width: 550,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text('Musterstart'),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Icon(Icons.arrow_downward),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text('11.30 Uhr'),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text('Hochschule Fulda'),
            ),
          ),
        ],
      ),
    ),
    onTap: () {},
  );
}

InkWell _buildFahrt3() {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal,
      ),
      height: 110,
      width: 550,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text('Musterstart'),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Icon(Icons.arrow_downward),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text('12.45 Uhr'),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text('Hochschule Fulda'),
            ),
          ),
        ],
      ),
    ),
    onTap: () {},
  );
}

InkWell _buildFahrt4() {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal,
      ),
      height: 110,
      width: 550,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text('Musterstart'),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Icon(Icons.arrow_downward),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text('13.00 Uhr'),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text('Hochschule Fulda'),
            ),
          ),
        ],
      ),
    ),
    onTap: () {},
  );
}

InkWell _buildFahrt5() {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal,
      ),
      height: 110,
      width: 550,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text('Musterstart'),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Icon(Icons.arrow_downward),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text('14.20 Uhr'),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text('Hochschule Fulda'),
            ),
          ),
        ],
      ),
    ),
    onTap: () {},
  );
}

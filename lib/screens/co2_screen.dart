import 'package:flutter/material.dart';

class CO2Screen extends StatelessWidget {
  const CO2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          backgroundColor: const Color.fromARGB(255, 77, 103, 111),
          title: const Text("CO2 Ersparnis",
            style: TextStyle(color: Colors.white),
          ),
        ),


        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,),
          selectedIconTheme: IconThemeData(
              color: Colors.white60),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: const Color.fromARGB(255, 77, 103, 111),
          items: const [
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

        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Scrollbar(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                 Text("125",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                          fontWeight: FontWeight.bold)),

                Text('Punkte',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 100,
                ),
                  Text('Lorem ipsum',
                  style:TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ))
                ],
                )),
            ),
          );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unigo_prototyp/screens/auswahl_screen.dart';

import '../../services/controller/ug_state_controller.dart';

class PreLoadingScreen extends StatelessWidget {
  UGStateController _controller = Get.put(UGStateController());

  PreLoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<bool>(
          future: _loadData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return _buildListView(context, snapshot);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Future<bool> _loadData() async {
    // TODO load relevant data
    return true;
  }

  Widget _buildListView(
    BuildContext context,
    AsyncSnapshot<bool> snapshot,
  ) {
    // TODO show data message and continue to next screen
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Text("data loaded")),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AuswahlScreen()));
            },
            child: Text("weiter"),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unigo_prototyp/services/osrm/model/osrm_service_provider.dart';
import 'package:unigo_prototyp/services/unigo_service.dart';

import '../../../../services/controller/ug_state_controller.dart';
import '../../../../services/osrm/model/osrm.dart';

class OsrmListScreen extends StatefulWidget {
  const OsrmListScreen({Key? key}) : super(key: key);

  @override
  _OsrmListScreenState createState() => _OsrmListScreenState();
}

class _OsrmListScreenState extends State<OsrmListScreen> {
  UGStateController _controller = Get.find();
  UniGoService service = UniGoService();
  Osrm osrmRoute = Osrm.empty();

  // Load to-do list from the server
  Future<bool> _loadOsrm() async {
    osrmRoute = await OSRMServiceProvider.getRoute(
      coordString: "9.41188,50.63475;9.68522,50.56611",
      objectFromJson: osrmFromJson,
    );

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("OSRMListe"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //_buildHeader(),
              SizedBox(
                height: 16,
              ),
              Obx(
                () {
                  int _change = _controller.somethingChanged.value;
                  return FutureBuilder<bool>(
                    future: _loadOsrm(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return _buildListView(snapshot);
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      return CircularProgressIndicator();
                    },
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListView(AsyncSnapshot<bool> snapshot) {
    List<Schritt> steps = osrmRoute.getSteps();
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: ListView.builder(
          itemCount: steps.length,
          itemBuilder: (context, index) {
            final step = steps[index];
            return _buildCard(step);
          },
        ),
      ),
    );
  }

  Widget _buildCard(Schritt step) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
      child: Stack(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 162, 219, 156),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text("${step.name}: (${step.maneuver.type} "
                    "${step.maneuver.modifier}) "
                    "${step.duration}s, ${step.distance}m"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

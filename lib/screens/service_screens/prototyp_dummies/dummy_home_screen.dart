import 'package:flutter/material.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/dummy_login_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/osrm/dummy_osrm_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/widgets/dummy_custom_round_button.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/widgets/dummy_svg_dynamic_scaffold_widget.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/widgets/dummy_unigo_bottom_navigation_bar.dart';
import 'package:unigo_prototyp/services/osrm/model/osrm.dart';

import '../../../services/osrm/model/osrm_service_provider.dart';

class DummyHomeScreen extends StatelessWidget {
  const DummyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SVGDynamicScaffoldWidget(
      drawer: Drawer(),
      showDrawer: false,
      appbar: AppBar(),
      showAppbar: false,
      fab: FloatingActionButton(
        onPressed: () {},
        child: Text("+"),
      ),
      showFab: false,
      bottomNavigationBar: UnigoBottomNavigationsBar(),
      showBottonNavigationBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRoundButton(
              text: "Zum Login",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DummyLoginScreen(),
                  ),
                );
              },
              width: 150,
            ),
            SizedBox(height: 16),
            CustomRoundButton(
              text: "Osrm test",
              callback: () async {
                Osrm answer = await OSRMServiceProvider.getRoute(
                  coordString: "9.41188,50.63475;9.68522,50.56611",
                  objectFromJson: osrmFromJson,
                );
                answer.printRoutes();
              },
              width: 150,
            ),
            SizedBox(height: 16),
            CustomRoundButton(
              text: "OsrmList",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OsrmListScreen()),
                );
              },
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}

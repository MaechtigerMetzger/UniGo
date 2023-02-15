import 'package:flutter/material.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/widgets/dummy_custom_round_button.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/widgets/dummy_svg_dynamic_scaffold_widget.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/widgets/dummy_svg_logo_widget.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/widgets/dummy_unigo_bottom_navigation_bar.dart';

class DummyLoginScreen extends StatelessWidget {
  const DummyLoginScreen({Key? key}) : super(key: key);

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
      showBottonNavigationBar: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DummySVGLogoWidget(width: 250,),
            SizedBox(height: 200),
            CustomRoundButton(
              text: "Anmelden",
              callback: () {},
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}

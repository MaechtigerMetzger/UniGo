import 'package:flutter/material.dart';
import 'package:unigo_prototyp/screens/service_screens/prototyp_dummies/widgets/dummy_svg_dynamic_scaffold_widget.dart';

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
      body: Center(child: Text("Dummy HomeScreen")),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unigo_prototyp/screens/service_screens/angebot_edit_screen.dart';
import 'package:unigo_prototyp/screens/service_screens/service_widgets/list_card_widget.dart';
import 'package:unigo_prototyp/services/controller/ug_state_controller.dart';
import 'package:unigo_prototyp/services/extensions/unigo_service_angebot_extension.dart';
import 'package:unigo_prototyp/services/unigo_service.dart';

import '../../services/model/angebot.dart';

class AngebotListScreen extends StatefulWidget {
  const AngebotListScreen({Key? key}) : super(key: key);

  @override
  _AngebotListScreenState createState() => _AngebotListScreenState();
}

class _AngebotListScreenState extends State<AngebotListScreen> {
  UGStateController _controller = Get.find();
  UniGoService service = UniGoService();
  List<Angebot> angebote = [];

  // Load to-do list from the server
  Future<bool> _loadUsers() async {
    angebote = await service.getAngebotList();

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Angebotliste"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Angebot angebot = Angebot(
                id: 0,
                datum: DateTime.now(),
                uhrzeit: "00:00:00",
                freiplaetze: 0,
                startort: "hier",
                zielort: "da",
                hasprofile: []);

            bool result = await service.createAngebotById(id: 0, data: angebot);

            setState(() {
              // update der Liste
            });
          },
          child: Text("add"),
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
                    future: _loadUsers(),
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

  ElevatedButton _buildClearButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          angebote = [];
        });
      },
      child: Text("clear"),
    );
  }

  Widget _buildListView(AsyncSnapshot<bool> snapshot) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: ListView.builder(
          itemCount: angebote.length,
          itemBuilder: (context, index) {
            final angebot = angebote[index];
            //return _buildCard(angebot);
            return ListCardWidget<Angebot>(
              object: angebot,
              content: Text("${angebot.startort} - ${angebot.zielort}"),
              edit_callback: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AngebotEditScreen(id: angebot.id),
                  ),
                );
              },
              delete_callback: () async {
                bool result = await service.deleteAngebotById(id: angebot.id);
                print(angebot.id);
                setState(() {});
              },
            );
          },
        ),
      ),
    );
  }
}

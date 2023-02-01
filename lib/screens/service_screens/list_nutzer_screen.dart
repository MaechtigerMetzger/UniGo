import 'package:flutter/material.dart';
import 'package:unigo_prototyp/services/ugbackend_service_provider.dart';
import 'package:unigo_prototyp/services/unigo_service.dart';

import '../../services/model/nutzer.dart';

class ListNutzerScreen extends StatefulWidget {
  const ListNutzerScreen({Key? key}) : super(key: key);

  @override
  _ListNutzerScreenState createState() => _ListNutzerScreenState();
}

class _ListNutzerScreenState extends State<ListNutzerScreen> {
  UniGoService service = UniGoService();
  List<Nutzer> users = [];

  // Load to-do list from the server
  Future<bool> _loadUsers() async {
    users = await service.getNutzerList();

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Nutzer nutzer = Nutzer(
              id: 0,
              vorname: "Harry",
              nachname: "Potter",
              passwort: "Expecto patronum",
              geburtsdatum: "1.1.2000",
              hasprofile: [],
              email: "h.p@ligusterweg.hex",
            );

            bool result = await UGBackendServiceProvider.createObject<Nutzer>(
              data: nutzer,
              toJson: nutzerToJson,
              resourcePath: "nutzer.json",
            );

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
              _buildHeader(),
              SizedBox(
                height: 16,
              ),
              FutureBuilder<bool>(
                future: _loadUsers(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return _buildListView(snapshot);
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return CircularProgressIndicator();
                },
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        users = [];
                      });
                    },
                    child: Text("clear"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Nutzer nutzer = await service.getNutzerById(id: 101);
                      nutzer.vorname = "${DateTime.now()}";
                      await UGBackendServiceProvider.updateObjectById<Nutzer>(
                        id: 109,
                        data: nutzer,
                        resourcePath: "nutzer",
                        toJson: nutzerToJson,
                      );
                      setState(() {
                        users = [];
                      });
                    },
                    child: Text("update 101"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      bool result =
                          await UGBackendServiceProvider.deleteObjectById(
                        id: 109,
                        resourcePath: "nutzer",
                      );
                      setState(() {
                        users = [];
                      });
                    },
                    child: Text("delete 109"),
                  ),
                ],
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

  Widget _buildHeader() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
    );
  }

  Widget _buildListView(AsyncSnapshot<bool> snapshot) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return _buildCard(user);
          },
        ),
      ),
    );
  }

  Widget _buildCard(Nutzer nutzer) {
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
                child: Text("${nutzer.vorname} ${nutzer.nachname}"),
              ),
            ),
          ),
          Container(
            height: 70,
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

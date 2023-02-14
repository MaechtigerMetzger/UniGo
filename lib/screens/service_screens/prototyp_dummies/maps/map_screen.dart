import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'nominatim.dart';
import 'remote_services.dart';
import 'text_widget.dart';

class MapScreen extends StatefulWidget {
  MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  late final _flutterMap;
  late final _mapController;
  late TextFormField _field;

  LatLng antoniusheim = new LatLng(50.5553535, 9.6581591);
  late double lat = antoniusheim.latitude;
  late double lng = antoniusheim.longitude;

  double zoom = 17;

  final markers = <Marker>[
    Marker(
      width: 80,
      height: 80,
      point: LatLng(51.5, -0.09),
      builder: (ctx) => const FlutterLogo(
        textColor: Colors.blue,
        key: ObjectKey(Colors.blue),
      ),
    ),
    Marker(
      width: 80,
      height: 80,
      point: LatLng(53.3498, -6.2603),
      builder: (ctx) => const FlutterLogo(
        textColor: Colors.green,
        key: ObjectKey(Colors.green),
      ),
    ),
    Marker(
      width: 80,
      height: 80,
      point: LatLng(48.8566, 2.3522),
      builder: (ctx) => const FlutterLogo(
        textColor: Colors.purple,
        key: ObjectKey(Colors.purple),
      ),
    ),
  ];

  @override
  void initState() {
    _mapController = MapController();
    _flutterMap = _buildFlutterMap();
    lat = antoniusheim.latitude;
    lng = antoniusheim.longitude;

    _controller.text = "Antoniusheim Cafe";
    _field = TextFormField(
      controller: _controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Gib eine Adresse ein';
        }
        return null;
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: _flutterMap,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildForm(context),
            ),
            //_buildButtonRow()
          ],
        ),
      ),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            zoom = zoom + 0.1;
            zoom = min(18, zoom);
            _mapController.move(LatLng(lat, lng), zoom);
          },
          child: Text("+"),
        ),
        ElevatedButton(
          onPressed: () {
            zoom = zoom - 0.1;
            zoom = max(1, zoom);
            _mapController.move(LatLng(lat, lng), zoom);
          },
          child: Text("-"),
        ),
        ElevatedButton(
          onPressed: () {
            zoom = 17;
            lat = antoniusheim.latitude;
            lng = antoniusheim.longitude;
            _mapController.move(LatLng(lat, lng), zoom);
          },
          child: Icon(Icons.home),
        ),
      ],
    );
  }

  Widget _buildFlutterMap() {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        center: LatLng(51.5, -0.09),
        zoom: 5,
      ),
      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: 'OpenStreetMap contributors',
          onSourceTapped: () {},
        ),
      ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        ),
        MarkerLayer(markers: markers),
      ],
    );
  }

  Widget _buildForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(width: 200, child: _field),
          ElevatedButton(
            onPressed: () async {
              String search = _controller.text;
              if (_formKey.currentState!.validate()) {
                List<Nominatim> liste =
                    await RemoteServices.fetchCoordinates(search);
                if (liste.isNotEmpty) {
                  print(liste[0].lat);
                  print(liste[0].lon);

                  lat = double.tryParse(liste[0].lat!) ?? antoniusheim.latitude;
                  lng =
                      double.tryParse(liste[0].lon!) ?? antoniusheim.longitude;

                  _mapController.move(LatLng(lat, lng), zoom);
                }

                /*
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${search}")),
                );
                
                 */
                FocusScope.of(context).unfocus();
              }
            },
            child: const Text('Suche'),
          ),
        ],
      ),
    );
  }
}

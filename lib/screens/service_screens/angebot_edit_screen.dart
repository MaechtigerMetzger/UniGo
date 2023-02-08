import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:unigo_prototyp/services/controller/ug_state_controller.dart';
import 'package:unigo_prototyp/services/extensions/unigo_service_angebot_extension.dart';
import 'package:unigo_prototyp/services/extensions/unigo_service_nutzer_extension.dart';
import 'package:unigo_prototyp/services/model/object_not_found_exception.dart';

import '../../services/model/angebot.dart';
import '../../services/model/nutzer.dart';
import '../../services/unigo_service.dart';

class AngebotEditScreen extends StatelessWidget {
  UGStateController _controller = Get.find();
  int id;
  late UniGoService service;
  late Angebot angebot;

  void _onChanged(dynamic val) => debugPrint(val.toString());
  final _formKey = GlobalKey<FormBuilderState>();

  AngebotEditScreen({required this.id, Key? key}) : super(key: key) {
    service = UniGoService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Angebot Edit Screen"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FutureBuilder<bool>(
                future: _loadUser(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!) {
                      // nutzer mit id wurde gefunden
                      return _buildForm(context, snapshot);
                    } else {
                      // nutzer mit id existiert nicht
                      return Container(
                        child: Text("error loading nutzer"),
                      );
                    }
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return CircularProgressIndicator();
                },
              ),
            ),
            //_buildForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context, AsyncSnapshot<bool> snapshot) {
    return FormBuilder(
      key: _formKey,
      // enabled: false,
      onChanged: () {
        _formKey.currentState!.save();
        //debugPrint(_formKey.currentState!.value.toString());
      },
      autovalidateMode: AutovalidateMode.disabled,
      skipDisabled: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16),
            _buildFormTextField(
              name: 'startort',
              labelText: 'Startort',
              value: angebot.startort,
            ),
            const SizedBox(height: 16),
            _buildFormTextField(
              name: 'zielort',
              labelText: 'Zielort',
              value: angebot.zielort,
            ),
            const SizedBox(height: 16),
            _buildFormTextField(
              name: 'uhrzeit',
              labelText: 'Uhrzeit',
              value: angebot.uhrzeit,
            ),
            const SizedBox(height: 16),
            _buildFormTextField(
              name: 'datum',
              labelText: 'Datum',
              value: "${angebot.datum}",
            ),
            const SizedBox(height: 16),
            _buildFormNumberField(
              name: 'freiplaetze',
              labelText: 'Freie Plätze',
              value: angebot.freiplaetze,
            ),
            const SizedBox(height: 16),
            _SubmitButton(
              text: "Speichern",
              callback: () async {
                Angebot data = Angebot(
                  id: angebot.id,
                  startort: _formKey.currentState!.value['startort'],
                  zielort: _formKey.currentState!.value['zielort'],
                  freiplaetze: int.parse(_formKey.currentState!.value['freiplaetze']),
                  uhrzeit: _formKey.currentState!.value['uhrzeit'],
                  datum: DateTime.parse(_formKey.currentState!.value['datum']),
                  hasprofile: []
                );

                bool result =
                    await service.updateAngebotById(id: angebot.id, data: data);
                print (result);

                // es wurde etwas verändert
                if (result) {
                  _controller.change();
                }

                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _SubmitButton(
      {String text = "Submit", required VoidCallback callback}) {
    return ElevatedButton(
      onPressed: () {
        //debugPrint(_formKey.currentState?.value.toString());
        if (_formKey.currentState?.saveAndValidate() ?? false) {
          // TODO update implementieren
          callback();
        } else {
          // TODO handle Form error
          debugPrint('Validierung fehlgeschlagen!');
        }
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildFormTextField({
    required String name,
    required String labelText,
    required String value,
  }) {
    return Container(
      width: 250,
      child: FormBuilderTextField(
        autovalidateMode: AutovalidateMode.disabled,
        name: name,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          suffixIcon: _circularIconButton(name),
        ),
        onChanged: (val) {
// do something sensible here
        },
        initialValue: value,
        // valueTransformer: (text) => num.tryParse(text),
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
        ]),
        // initialValue: '12',
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
      ),
    );
  }

  Widget _circularIconButton(String fieldName) {
    return IconButton(
      onPressed: () {
        print("reset ${fieldName}");
        print(_formKey.currentState!.fields[fieldName]!.value);
        _formKey.currentState!.fields[fieldName]!.didChange("");
      },
      icon: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        child: Icon(
          size: 16,
          Icons.clear,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildFormNumberField(
      {required String name, required String labelText, required int value}) {
    return Container(
      width: 250,
      child: FormBuilderTextField(
        autovalidateMode: AutovalidateMode.disabled,
        name: name,
        initialValue: "${value}",
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          suffixIcon: _circularIconButton(name),
        ),
        onChanged: (val) {
// do something sensible here
        },
        // valueTransformer: (text) => num.tryParse(text),
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.numeric(),
        ]),
        // initialValue: '12',
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
      ),
    );
  }

  Future<bool> _loadUser() async {
    try {
      angebot = await service.getAngebotById(id: this.id);
      return true;
    } on ObjectNotFoundException catch (e) {
      angebot = Angebot.empty(datum: DateTime.now());
      return false;
    }
  }
}

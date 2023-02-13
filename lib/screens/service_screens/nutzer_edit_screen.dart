import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:unigo_prototyp/services/controller/ug_state_controller.dart';
import 'package:unigo_prototyp/services/extensions/unigo_service_nutzer_extension.dart';
import 'package:unigo_prototyp/services/model/object_not_found_exception.dart';

import '../../services/model/nutzer.dart';
import '../../services/unigo_service.dart';

class NutzerEditScreen extends StatelessWidget {
  UGStateController _controller = Get.find();
  int id;
  late UniGoService service;
  late Nutzer nutzer;

  void _onChanged(dynamic val) => debugPrint(val.toString());
  final _formKey = GlobalKey<FormBuilderState>();

  NutzerEditScreen({required this.id, Key? key}) : super(key: key) {
    service = UniGoService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nutzer Edit Screen"),
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
        debugPrint(_formKey.currentState!.value.toString());
      },
      autovalidateMode: AutovalidateMode.disabled,
      skipDisabled: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16),
            _buildFormTextField(
              name: 'firstname',
              labelText: 'Vorname',
              value: nutzer.vorname,
            ),
            const SizedBox(height: 16),
            _buildFormTextField(
              name: 'lastname',
              labelText: 'Nachname',
              value: nutzer.nachname,
            ),
            const SizedBox(height: 16),
            _buildFormTextField(
              name: 'email',
              labelText: 'Email',
              value: nutzer.email,
            ),
            const SizedBox(height: 16),
            _buildFormTextField(
              name: 'password',
              labelText: 'Passwort',
              value: nutzer.passwort,
            ),
            const SizedBox(height: 16),
            _buildFormTextField(
              name: 'geburtdatum',
              labelText: 'Geburtsdatum',
              value: nutzer.geburtsdatum,
            ),
            const SizedBox(height: 16),
            _SubmitButton(
              text: "Speichern",
              callback: () async {
                Nutzer data = Nutzer(
                  id: nutzer.id,
                  vorname: _utf8encode(_formKey.currentState!.value['firstname']),
                  nachname: _formKey.currentState!.value['lastname'],
                  geburtsdatum: _formKey.currentState!.value['geburtdatum'],
                  passwort: _formKey.currentState!.value['password'],
                  email: _formKey.currentState!.value['email'],
                  hasprofile: nutzer.hasprofile,
                );

                bool result =
                    await service.updateNutzerById(id: nutzer.id, data: data);

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
      {required String name, required String labelText}) {
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
      nutzer = await service.getNutzerById(id: this.id);
      return true;
    } on ObjectNotFoundException catch (e) {
      nutzer = Nutzer.empty();
      return false;
    }
  }

  String _utf8encode(String value) {
    return (utf8.decode(utf8.encode(value)));
  }
}

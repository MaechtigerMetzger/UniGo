import 'package:flutter/material.dart';

import '../../../services/model/angebot.dart';

class ListCardWidget<T> extends StatelessWidget {
  T object;
  Widget content;
  VoidCallback edit_callback;
  VoidCallback delete_callback;

  ListCardWidget({
    required this.object,
    required this.content,
    required this.edit_callback,
    required this.delete_callback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: content,
                /*
                child: Text("${object.startort} - ${object.zielort}"
                    " am ${object.datum}, Plätze: ${object.freiplaetze}"),

                 */
              ),
            ),
          ),
          Container(
            height: 70,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 80,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: delete_callback,
                      icon: Icon(Icons.delete_outline_outlined),
                    ),
                    IconButton(
                      onPressed: edit_callback,
                      icon: Icon(Icons.edit),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

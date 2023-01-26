import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unigo_prototyp/widgets/svg_scaffold_widget.dart';

class DialogTestScreen extends StatelessWidget {
  const DialogTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgScaffoldWidget(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildGetXDialog(context),
            SizedBox(height:10),
            ElevatedButton(
              onPressed: () async {
                var value = await _showMyDialog(context);
                print(value);
              },
              child: Text("material world"),
            ),
          ],
        ),
      ),
    );
  }

  Future<int?> _showMyDialog(BuildContext context) async {
    return showDialog<int>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          titlePadding: EdgeInsets.only(top:20),
          titleTextStyle: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
          title: Container(
            width: double.infinity,
            child: Center(
              child: Text(
                'Fahrt freigeben',
              ),
            ),
          ),
          contentPadding: EdgeInsets.all(0),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Ihre Fahrt wird jetzt Anderen angezeigt.",
                    style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  child: Text(
                    "+ 20pt",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pop<int>(context, 1);
                  },
                  child: Container(
                    width: 122,
                    height: 31,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 194, 223, 222),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                          "Alles klar",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildGetXDialog(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () async {
          var value = await Get.defaultDialog<int>(
            title: "Fahrt freigeben",
            titleStyle: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 20,
            ),
            titlePadding: EdgeInsets.only(top: 20, bottom: 2),
            backgroundColor: Colors.white,
            barrierDismissible: false,
            radius: 15,
            contentPadding: EdgeInsets.all(0),
            content: Column(
              children: [
                Container(
                  child: Text(
                    "Ihre Fahrt wird jetzt Anderen angezeigt.",
                    style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  child: Text(
                    "+ 20pt",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pop<int>(context, 1);
                  },
                  child: Container(
                    width: 122,
                    height: 31,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 194, 223, 222),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                          "Alles klar",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          );

          print(value);
        },
        child: Text("show getx dialog"),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/reviewbooking.dart';

class CompleteBooking extends StatelessWidget {
  const CompleteBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Column(
              children: [
                Icon(Icons.cloud_done, size: 150),
                Text(
                  "Complete your reservation",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: GFButtonBar(
              children: <Widget>[
                GFButton(
                  // padding: EdgeInsets.only(left: 0),
                  color: Color.fromARGB(255, 116, 17, 17),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ReviewBooking()));
                  },
                  text: 'Show QRcode >>',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

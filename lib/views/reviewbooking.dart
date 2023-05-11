import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/complete_res.dart';
import 'package:pj_gr_t/views/home.dart';

class ReviewBooking extends StatelessWidget {
  const ReviewBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff780000),
        title: const Text(
          'QRcode',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 90),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(50),
                child: Center(
                  child: Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 193, 193, 193)),
                    child: Center(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Secret Code : JGNRD8T4",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.qr_code, size: 200),
                          Text("Please show QRCODE to the staff.",
                              style: TextStyle(fontSize: 15))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



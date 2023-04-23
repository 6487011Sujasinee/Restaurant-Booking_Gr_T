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


// import 'package:flutter/material.dart';
// import 'package:daiq/screens/complete_res.dart';
// import 'package:flutter/material.dart';
// // import 'package:getwidget/getwidget.dart';
// // import 'package:pj_gr_t/views/complete_res.dart';
// import 'package:daiq/screens/reservation_details.dart';

// class ReviewBooking extends StatelessWidget {
//   const ReviewBooking({Key? key, required this.partysize, required this.date, required this.time, required this.name, required this.phone, required this.email, required this.comment}) : super(key: key);
// // class ReviewBooking extends StatelessWidget {
// //   const ReviewBooking({Key? key, required this.partysize,
// //       required this.date,
// //       required this.time,
// //       required this.name,
// //       required this.phone,
// //       required this.email,
// //       required this.comment}) : super(key: key);

//    final String partysize, date, time, name, phone, email, comment;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xff780000),
//         title: const Text(
//           'Booking Information',
//           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Container(
//                   width: 350,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color.fromARGB(255, 193, 193, 193)),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(padding: EdgeInsets.only(left: 20)),
//                         Icon(Icons.account_circle),
//                         Padding(padding: EdgeInsets.only(right: 12)),
//                         Text("Name : "),
//                       Text((name),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(0.0),
//                 child: Container(
//                   width: 350,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color.fromARGB(255, 193, 193, 193)),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(padding: EdgeInsets.only(left: 20)),
//                         Icon(Icons.call),
//                         Padding(padding: EdgeInsets.only(right: 12)),
//                         Text("Phone : "),
//                       Text((phone),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Container(
//                   width: 350,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color.fromARGB(255, 193, 193, 193)),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(padding: EdgeInsets.only(left: 20)),
//                         Icon(Icons.mail),
//                         Padding(padding: EdgeInsets.only(right: 12)),
//                         Text("E-mail : "),
//                       Text((email),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(0.0),
//                 child: Container(
//                   width: 350,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color.fromARGB(255, 193, 193, 193)),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(padding: EdgeInsets.only(left: 20)),
//                         Icon(Icons.comment),
//                         Padding(padding: EdgeInsets.only(right: 12)),
//                         Text("Comment : "),
//                       Text((comment),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Container(
//                   width: 350,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color.fromARGB(255, 193, 193, 193)),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(padding: EdgeInsets.only(left: 20)),
//                         Icon(Icons.calendar_month),
//                         Padding(padding: EdgeInsets.only(right: 12)),
//                         Text("Date : "),
//                       Text((date)
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
               
//                Padding(
//                 padding: const EdgeInsets.all(0.0),
//                 child: Container(
//                   width: 350,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color.fromARGB(255, 193, 193, 193)),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(padding: EdgeInsets.only(left: 20)),
//                         Icon(Icons.account_box_sharp),
//                         Padding(padding: EdgeInsets.only(right: 12)),
//                         Text("Party size : "),
//                       Text((partysize)),
//                       Text((" people"),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
        
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Container(
//                   width: 350,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color.fromARGB(255, 193, 193, 193)),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(padding: EdgeInsets.only(left: 20)),
//                         Icon(Icons.lock_clock),
//                         Padding(padding: EdgeInsets.only(right: 12)),
//                         Text("Time : "),
//                       Text((time),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(0.0),
//                 child: Container(
//                   width: 350,
//                   height: 265,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color.fromARGB(255, 193, 193, 193)),
//                   child: Center(
//                     child: Column(
//                       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Padding(padding: EdgeInsets.only(top: 20)),
//                         Text(
//                           "Secret Code : JGNRD8T4",
//                           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                         Icon(Icons.qr_code, size: 200),
//                         Text("Please show it to the staff.",
//                             style: TextStyle(fontSize: 15))
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


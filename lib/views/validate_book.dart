import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/complete_res.dart';


class ValidateBooking extends StatelessWidget {
  
   ValidateBooking({Key? key, 
      required this.partysize,
      required this.date,
      required this.time,
      required this.name,
      required this.phone,
      required this.email,
      required this.comment}) : super(key: key);

  TextEditingController _partysize = new TextEditingController();
  TextEditingController _date = new TextEditingController();
  TextEditingController _time = new TextEditingController();
  TextEditingController _name = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _comment = new TextEditingController();

  final String partysize, date, time, name, phone, email, comment;
  

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff780000),
        title: const Text(
          'Booking Information',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 193, 193, 193)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.account_circle),
                        Padding(padding: EdgeInsets.only(right: 12)),
                        Text("Name : "),
                        Text((name),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 193, 193, 193)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.call),
                        Padding(padding: EdgeInsets.only(right: 12)),
                        Text("Phone : "),
                        Text((phone),
        
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 193, 193, 193)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.mail),
                        Padding(padding: EdgeInsets.only(right: 12)),
                        Text("E-mail : "),
                        Text((email),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 193, 193, 193)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.comment),
                        Padding(padding: EdgeInsets.only(right: 12)),
                        Text("Comment : "),
                        Text((comment),
        
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 193, 193, 193)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.calendar_month),
                        Padding(padding: EdgeInsets.only(right: 12)),
                        Text("Date : "),
                        Text((date)
                          // "Date : 10 April 2023",
                          // ,style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 193, 193, 193)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.account_box_sharp),
                        Padding(padding: EdgeInsets.only(right: 12)),
                        Text("Party size : "),
                        Text((partysize)),
                        Text((" people"),
                          // "Date : 10 April 2023",
                          // style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 193, 193, 193)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.lock_clock),
                        Padding(padding: EdgeInsets.only(right: 12)),
                        Text("Time : "),
                        Text((time),
                          // style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 65,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xff780000),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2))
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> CompleteBooking()));
                  },
                  child: Center(
                    child: Text(
                      "Reservation",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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

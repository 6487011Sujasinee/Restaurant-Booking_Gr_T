import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/reservation_details.dart';

class DetailSpectrum extends StatelessWidget {
  const DetailSpectrum({super.key});

  Container MyArticles(String img_asset) {
    return Container(
      width: 300,
      height: 400,
      child: Card(
        child: Wrap(
          children: [Image.asset(img_asset)],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Spectrum Lounge & Bar',
            style: TextStyle(fontSize: 25, color: Colors.white)),
        backgroundColor: Color(0xff780000),
        shadowColor: Colors.red[900],
        toolbarHeight: 100,
        toolbarOpacity: 0.5,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 200,
            //width: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MyArticles("assets/images/spectrum-lounge-bar-.jpg"),
                MyArticles("assets/images/spectrum-lounge-bar-2.jpg"),
                MyArticles("assets/images/spectrum-lounge-bar-3.jpg"),
                MyArticles("assets/images/spectrum-lounge-bar-4.jpg"),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(15.0),
                //leading: Icon(Icons.restaurant),
                title: Text("Spectrum Lounge & Bar",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                subtitle: Text(
                    "Immerse yourself in a spectacular view of the city skyline at Spectrum Lounge & Bar located on level"),
              ),
              SizedBox(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Icon(Icons.location_on),
                      Padding(padding: EdgeInsets.only(right: 5)),
                      Text(
                          "29-30 Fl., 1 Soi Sukhumvit 13, Bangkok 10110"),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Icon(Icons.location_city),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    Text("Sukhumvit 0.1 miles from Sukhumvit"),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Icon(Icons.web_sharp),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    Text("https://www.hyatt.com/en-US/hotel/thailand/"),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Icon(Icons.mail),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    Text("bkkhr.spectrum@hyatt.com"),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Icon(Icons.call),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    Text("+66 2 098 1234"),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => ReservationDetails()));
                },
                child: GFButtonBar(
                  children: [
                    GFButton(
                      color: Color(0xff780000),
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (_) => ReservationDetails()));
                      },
                      size: 60,
                      text: 'BOOK A TABLE', textStyle: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

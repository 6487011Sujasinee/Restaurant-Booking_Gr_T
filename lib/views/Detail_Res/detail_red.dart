import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/reservation_details.dart';

class DetailRedOven extends StatelessWidget {
  const DetailRedOven({super.key});

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
        title: Text('Red Oven Restaurant',
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
            height: 225,
            //width: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MyArticles("assets/images/red_oven.jpg"),
                MyArticles("assets/images/red_oven2.jpg"),
                MyArticles("assets/images/red_oven3.jpg"),
                MyArticles("assets/images/red_oven4.jpg"),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(10.0),
                //leading: Icon(Icons.restaurant),
                title: Text("Red Oven Restaurant",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                subtitle: Text(
                    "A fabulous all day dining restaurant with best buffet in Bangkok, guaranteed to satisfy everyone opens its door every morning at Red Oven."),
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
                          "2 North Sathorn Road Sofitel, Bangkok 10500 Thailand"),
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
                    Text("Silom 1.4 miles from Sukhumvit"),
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
                    Text("http://www.sofitel.com/"),
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
                    Text("H6835@sofitel.com"),
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
                    Text("+66 2 624 0000"),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              
              GestureDetector(
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ReservationDetails()));
                },
                child: GFButtonBar(
                  children: [
                    GFButton(
                      color: Color(0xff780000),
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ReservationDetails()));
                      },
                      size: 60,
                      text: 'BOOK A TABLE', textStyle: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

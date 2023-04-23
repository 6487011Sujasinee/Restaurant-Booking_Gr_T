import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/reservation_details.dart';

class DetailSirimahannop extends StatelessWidget {
  const DetailSirimahannop({super.key});

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
        title: Text('Sirimahannop Restaurant',
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
                MyArticles("assets/images/sirimahannop.jpg"),
                MyArticles("assets/images/sirimahannop2.jpg"),
                MyArticles("assets/images/sirimahannop3.jpg"),
                MyArticles("assets/images/sirimahannop4.jpg"),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(5.0),
                //leading: Icon(Icons.restaurant),
                title: Text("Sirimahannop Restaurant",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                subtitle: Text(
                    "Sirimahannop in Bangkok is ready to transport guests back to an enchanting bygone era of Thai heritage with timeless and elegant decor,"),
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
                          "ASIATIQUE Charoenkrung Soi 72-76 Thailand"),
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
                    Text("Riverside 0.4 miles from Chao Phraya River"),
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
                    Text("http://www.sirimahannop.com/"),
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
                    Text("restaurant-reservations.bkkqp@marriotthotels.com"),
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
                    Text("+66 2 059 5999"),
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

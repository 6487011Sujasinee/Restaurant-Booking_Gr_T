import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/reservation_details.dart';

class DetailYao extends StatelessWidget {
  const DetailYao({super.key});

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
                MyArticles("assets/images/yao_restaurant_rooftop_bar.jpg"),
                MyArticles("assets/images/yao_restaurant_rooftop_bar2.jpg"),
                MyArticles("assets/images/yao_restaurant_rooftop_bar3.jpg"),
                MyArticles("assets/images/yao_restaurant_rooftop_bar4.JPG"),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(5.0),
                //leading: Icon(Icons.restaurant),
                title: Text("Yao Restaurant & Rooftop Bar",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                subtitle: Text(
                    "A multi-level social hotspot with both style and substance. Located in the heart of vibrant Surawongse, Yào offers innovative cuisine, cocktails, and décor influenced by modern China"),
              ),
              SizedBox(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Icon(Icons.location_on),
                      Padding(padding: EdgeInsets.only(right: 5)),
                      Text("262, Surawong Road Si Phraya, Bang Rak, Bangkok"),
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
                    Text("Silom 0.7 miles from Chao Phraya River"),
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
                    Text("http://www.yaobangkok.com/"),
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
                    Text("mhrs.bkkwo.fbreservation@marriotthotels.com"),
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
                    Text("+66 2 088 5666"),
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
                      text: 'BOOK A TABLE',
                      textStyle: TextStyle(fontSize: 30),
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

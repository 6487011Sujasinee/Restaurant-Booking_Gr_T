import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/reservation_details.dart';

class DetailRangMahal extends StatelessWidget {
  const DetailRangMahal({super.key});
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
        title: Text('Rang Mahal Restaurant',
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
                MyArticles("assets/images/Rang-Mahal.jpg"),
                MyArticles("assets/images/Rang-Mahal2.jpg"),
                MyArticles("assets/images/Rang-Mahal3.jpg"),
                MyArticles("assets/images/Rang-Mahal4.jpg"),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(14.0),
                //leading: Icon(Icons.restaurant),
                title: Text("Rang Mahal Restaurant",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                subtitle: Text(
                    "One of the Bangkok’s most revered and acclaimed Indian restaurants for more than two decades, Rang Mahal"),
              ),
              SizedBox(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Icon(Icons.location_on),
                      Padding(padding: EdgeInsets.only(right: 5)),
                      Text("19 Sukhumvit Soi 18, Khlong Toei, Bangkok 10110"),
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
                    Text("Sukhumvit 0.5 miles from Sukhumvit"),
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
                    Text("http://www.rembrandtsukhumvit.com/rang-mahal.php"),
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
                    Text("marcommgr@rembrandtbkk.com"),
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
                    Text("+66 62 598 0327"),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
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
                      text: 'BOOK A TABLE',
                      textStyle: TextStyle(fontSize: 30),
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

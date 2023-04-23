import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/Detail_Res/detail_red.dart';
import 'package:pj_gr_t/views/Detail_Res/detail_siri.dart';
import 'package:pj_gr_t/views/Detail_Res/detail_spectrum.dart';
import 'package:pj_gr_t/views/Detail_Res/detail_yao.dart';
import 'package:pj_gr_t/views/Detail_Res/detail_rang.dart';

class SelectionRestaurant extends StatelessWidget {
  const SelectionRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _Textcontroller = TextEditingController();

    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text(
        //     'Restaurant',
        //   ),
        //   backgroundColor: Color(0xff780000),
        // ),
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Row(
          children: [
            Icon(Icons.filter_list_alt),
            SizedBox(
              width: 345,
              child: TextField(
                controller: _Textcontroller,
                decoration: InputDecoration(
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0)),
                filled: true,
                fillColor: Color.fromARGB(255, 209, 210, 211),
                  //icon: Icon(Icons.search_off_rounded),
                hintText: "Search here...",
                ),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            // Padding(
            //     padding: EdgeInsets.symmetric(
            //         vertical: 5.0, horizontal: 5.0)),
            // GFListTile(
            //   avatar: Image.asset("assets/images/res_1.jpg",
            //       width: 100, height: 60),
            //   titleText: 'Hiiiii',
            //   padding: EdgeInsets.all(0.0),
            //   subTitleText: 'This is a open source UI library.',
            //   description: Text(
            //       "GetWidget Library is a Flutter based component library"),
            //   icon: Icon(Icons.favorite, color: Colors.red),
            //   color: Color.fromARGB(255, 217, 217, 217),
            //   hoverColor: Colors.blueGrey,
            //   //margin: EdgeInsets.symmetric( horizontal: 5.0)
            // ),
            GestureDetector(
              //RedOven
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => DetailRedOven()));
              },
              child: GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  'assets/images/red_oven.jpg',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage:
                        AssetImage('assets/images/red_oven_logo.png'),
                  ),
                  titleText: 'Red Oven Restaurants',
                  subTitleText:
                      '2 North Sathorn Road Sofitel So Bangkok, Bangkok 10500 Thailand',
                ),
                content: Text(
                    "A fabulous all day dining restaurant with best buffet in Bangkok, guaranteed to satisfy everyone opens its door every morning at Red Oven."),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
                      //icon: Icon(Icons.share),
                      color: Color.fromARGB(255, 203, 39, 39),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => DetailRedOven()));
                      },
                      text: 'More Detail >>',
                      //color: Color.fromARGB(31, 28, 7, 7),
                      // child: Icon(
                      //   Icons.share,
                      //   color: Colors.white,
                      // ),
                    ),
                  ],
                ),
                color: Color.fromARGB(255, 207, 212, 214),
              ),
            ),

            GestureDetector(
              //Sirimahannop
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => DetailSirimahannop()));
              },
              child: GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  'assets/images/sirimahannop.jpg',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage:
                        AssetImage('assets/images/Sirimahannop_Logo.jpg'),
                  ),
                  titleText: 'Sirimahannop Restaurants',
                  subTitleText:
                      'ASIATIQUE The Riverfront Charoenkrung Soi 72-76, Charoenkrung Road, Bangkok 10120 Thailand',
                ),
                content: Text(
                    "Sirimahannop in Bangkok is ready to transport guests back to an enchanting bygone era of Thai heritage with timeless and elegant decor, historic photographs and everyday utensils that vividly showcase life of the old glorious days"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
                      color: Color.fromARGB(255, 203, 39, 39),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => DetailSirimahannop()));
                      },
                      text: 'More Detail >>',
                    ),
                  ],
                ),
                color: Color.fromARGB(255, 207, 212, 214),
              ),
            ),

            GestureDetector(
              //Spectrum Lounge & Bar
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => DetailSpectrum()));
              },
              child: GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  'assets/images/spectrum-lounge-bar-.jpg',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage:
                        AssetImage('assets/images/spectrum_logo.png'),
                  ),
                  titleText: 'Spectrum Lounge & Bar',
                  subTitleText:
                      '29-30 Fl., 1 Soi Sukhumvit 13, Bangkok 10110 Thailand',
                ),
                content: Text(
                    "Immerse yourself in a spectacular view of the city skyline at Spectrum Lounge & Bar located on level"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
                      color: Color.fromARGB(255, 203, 39, 39),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => DetailSpectrum()));
                      },
                      text: 'More Detail >>',
                    ),
                  ],
                ),
                color: Color.fromARGB(255, 207, 212, 214),
              ),
            ),

            GestureDetector(
              // Yao Restaurant & Rooftop Bar
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => DetailYao()));
              },
              child: GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  'assets/images/yao_restaurant_rooftop_bar.jpg',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 7.0,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage('assets/images/yao_logo.jpg'),
                  ),
                  titleText: 'Yao Restaurant & Rooftop Bar',
                  subTitleText:
                      '262, Surawong Road Si Phraya, Bang Rak, Bangkok 10500 Thailand',
                ),
                content: Text(
                    "A multi-level social hotspot with both style and substance. Located in the heart of vibrant Surawongse, Yào offers innovative cuisine, cocktails, and décor influenced by modern China"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
                      color: Color.fromARGB(255, 203, 39, 39),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => DetailYao()));
                      },
                      text: 'More Detail >>',
                    ),
                  ],
                ),
                color: Color.fromARGB(255, 207, 212, 214),
              ),
            ),

            GestureDetector( //Rang Mahal Restaurant
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => DetailRangMahal()));
              },
              child: GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  'assets/images/Rang-Mahal.jpg',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/rang_logo.jpg'),
                  ),
                  titleText: 'Rang Mahal Restaurant',
                  subTitleText:
                      '19 Sukhumvit Soi 18, Khlong Toei, Bangkok 10110 Thailand',
                ),
                content: Text(
                    "One of the Bangkok’s most revered and acclaimed Indian restaurants for more than two decades, Rang Mahal"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
                      color: Color.fromARGB(255, 203, 39, 39),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => DetailRangMahal()));
                      },
                      text: 'More Detail >>',
                    ),
                  ],
                ),
                color: Color.fromARGB(255, 207, 212, 214),
              ),
            ),

          ],
        ),
      ]),
    )));
  }
  //
}

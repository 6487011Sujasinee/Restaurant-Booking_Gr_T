import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pj_gr_t/models/callapi.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/views/list_select_res.dart';
import 'package:pj_gr_t/views/reservation_details.dart';

class RestaurantsTile extends StatelessWidget {
  const RestaurantsTile(this.restaurant);
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff780000),
                  ),
                  child: GestureDetector(
                    onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => ListRestaurants(restaurant)));
                    },
                    child: GFCard(
                      boxFit: BoxFit.cover,
                      titlePosition: GFPosition.start,
                      image: Image.network(restaurant.imageRestaurant,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                      showImage: true,
                      title: GFListTile(
                        avatar: GFAvatar(
                          backgroundImage: NetworkImage(restaurant.imageLogo),
                        ),
                        titleText: restaurant.name,
                        subTitleText: restaurant.address,
                      ),
                      content: Text(restaurant.description),
                      buttonBar: GFButtonBar(
                        children: <Widget>[
                          GFButton(
                            color:  Color(0xff780000),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => ListRestaurants(restaurant)));
                            },
                            text: 'More Detail >>',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

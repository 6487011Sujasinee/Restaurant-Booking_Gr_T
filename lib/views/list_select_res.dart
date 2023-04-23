import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/controllers/rescontroller.dart';
import 'package:pj_gr_t/models/callapi.dart';
import 'package:pj_gr_t/views/reservation_details.dart';

class DataListRestaurants extends StatefulWidget {
  @override
  State<DataListRestaurants> createState() => DataListRestaurantsState();
}

class DataListRestaurantsState extends State<DataListRestaurants> {
  final RestaurantController restaurantController =
      Get.put(RestaurantController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Obx(() {
          if (restaurantController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          else
            return StaggeredGridView.countBuilder(
              crossAxisCount: 1,
              itemCount: restaurantController.Res_list.length,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              itemBuilder: (context, index) {
                return ListRestaurants(restaurantController.Res_list[index]);
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            );
        }),
      ),
    );
  }
}

class ListRestaurants extends StatelessWidget {
  const ListRestaurants(this.restaurant);
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff780000),
        title: Text(restaurant.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(restaurant.imageRestaurant),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(14.0),
              //leading: Icon(Icons.restaurant),
              title: Text(restaurant.name,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
              subtitle: Text(restaurant.description),
            ),
            SizedBox(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Icon(Icons.location_on),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    Text(restaurant.address),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Information',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Icon(Icons.location_city),
                          SizedBox(width: 16),
                          Text(restaurant.nearPlace),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Icon(Icons.web_sharp),
                          SizedBox(width: 16),
                          Text(restaurant.website),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Icon(Icons.mail),
                          SizedBox(width: 16),
                          Text(restaurant.eMail),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Icon(Icons.call),
                          SizedBox(width: 16),
                          Text(restaurant.tel),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => ReservationDetails()),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff780000),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'BOOK NOW',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

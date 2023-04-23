import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pj_gr_t/models/callapi.dart';
import 'package:pj_gr_t/services/remote_api.dart';
import 'package:pj_gr_t/controllers/rescontroller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/instance_manager.dart';
import 'package:pj_gr_t/views/home.dart';
import 'package:pj_gr_t/views/list_select_res.dart';
import 'package:pj_gr_t/views/res_tile.dart';

class DataSelectionRestaurants extends StatefulWidget {
  @override
  State<DataSelectionRestaurants> createState() =>
      DataSelectionRestaurantsState();
}

class DataSelectionRestaurantsState extends State<DataSelectionRestaurants> {
  final RestaurantController restaurantController =
      Get.put(RestaurantController());

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff780000),
        actions: [
            Container(
              height: 15,
              width: 80,
              decoration: BoxDecoration(
                color: Color(0xff780000),
                borderRadius: BorderRadius.circular(15),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => HomeScreen()));
                },
                child: Center(
                  child: Text(
                    "Log Out",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
               IconButton(
            icon: Icon(
              Icons.logout,             
            ),
            onPressed: () {
               Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => HomeScreen()));
            },
          ),      
        ],
      ),
      body: Column(
        children : [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'DAIQ BOOKING',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.search), onPressed: () {}),
                        ],
            ),
          ),
          Expanded(  // res_tile.dart
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
                    return RestaurantsTile(restaurantController.Res_list[index]);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                );
            }),
          ),
      ],
      ),
    );
  }
}
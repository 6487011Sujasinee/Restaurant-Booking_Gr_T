import 'dart:convert';
import 'package:pj_gr_t/models/callapi.dart';
import 'package:http/http.dart' as http;


class RemoteServices {
  static var client = http.Client();

  static Future<List<Restaurant>?> fetchRestaurant() async {
    var response = await client.get(Uri.parse(
        'https://sheet2api.com/v1/hO59Vc23SUWX/restaurant_api'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return restaurantFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
  static fetchRestaurants() {}
}
// To parse this JSON data, do
//
//     final restaurant = restaurantFromJson(jsonString);

import 'dart:convert';

List<Restaurant> restaurantFromJson(String str) => List<Restaurant>.from(json.decode(str).map((x) => Restaurant.fromJson(x)));

String restaurantToJson(List<Restaurant> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Restaurant {
    Restaurant({
        required this.imageLogo,
        required this.name,
        required this.address,
        required this.imageRestaurant,
        required this.description,
        required this.nearPlace,
        required this.website,
        required this.eMail,
        required this.tel,
    });
    
    String imageLogo;
    String name;
    String address;
    String imageRestaurant;
    String description;
    String nearPlace;
    String website;
    String eMail;
    String tel;

    factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        imageLogo: json["Image_Logo"],
        name: json["Name "],
        address: json["Address"],
        imageRestaurant: json["Image_Restaurant"],
        description: json["Description"],
        nearPlace: json["Near_Place"],
        website: json["Website"],
        eMail: json["E-mail"],
        tel: json["Tel"],
    );

    Map<String, dynamic> toJson() => {
        "Image_Logo": imageLogo,
        "Name ": name,
        "Address": address,
        "Image_Restaurant": imageRestaurant,
        "Description": description,
        "Near_Place": nearPlace,
        "Website": website,
        "E-mail": eMail,
        "Tel": tel,
    };
}


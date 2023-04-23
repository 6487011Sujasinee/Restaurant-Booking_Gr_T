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







// To parse this JSON data, do
//
//     final test = testFromJson(jsonString);

// import 'dart:convert';

// List<Test> testFromJson(String str) => List<Test>.from(json.decode(str).map((x) => Test.fromJson(x)));

// String testToJson(List<Test> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Test {
//     Test({
//         required this.userId,
//         required this.id,
//         required this.title,
//         required this.body,
//     });

//     int userId;
//     int id;
//     String title;
//     String body;

//     factory Test.fromJson(Map<String, dynamic> json) => Test(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//     );

//     Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//     };
// }

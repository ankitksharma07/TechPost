import 'dart:convert';

class User {
  final String username;
  final String name;
  final String email;
  final String phone;
  final Address address;
  final String lat;
  final String lng;
  User({this.name, this.username,this.email,this.phone,this.address,this.lat,this.lng});

  factory User.fromJson(dynamic json) {

    return User(
          name:json['name'].toString(),
          username:json['username'].toString(),
          email:json['email'].toString(),
          phone:json['phone'].toString(),
          lat:json['lat'].toString(),
          lng:json['lng'].toString(),
          address:Address.fromJson(json["address"]));
  }

  @override
  String toString() {
    return '$name, $username ,$email,$phone,$lat,$lng';
  }
}
class Address {

 final  Geo geo;

  Address({this.geo});

  factory Address.fromJson(dynamic json) {
    return Address(geo:Geo.fromJson(json["geo"]));
  }

  @override
  String toString() {
    return '$geo';
  }
}

class Geo {
  final  String lat;
  final String lng;

  Geo({this.lat, this.lng});

  factory Geo.fromJson(dynamic json) {
    return Geo(
        lat:json['lat'].toString(),
        lng:json['lng'].toString());
  }

  @override
  String toString() {
    return '$lat, $lng';
  }

}


class PostAndUserData {
  String name;
  String username;
  String body;
  bool likePost;
  String email;
  String phone;
  String lng;
  String lat;
  // ignore: avoid_positional_boolean_parameters
  PostAndUserData(this.name, this.username, this.body,this.likePost,this.email,this.phone,this.lng,this.lat);
}


class UserProfileData{

  String name;
  String email;
  String phone;
  String lng;
  String lat;
  // ignore: avoid_positional_boolean_parameters
  UserProfileData(this.name,this.email,this.phone,this.lng,this.lat);
}



List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  String userId;
  String body;

  Post({this.userId, this.body});

  Post.fromJson(Map<String, dynamic> json) {
    userId = json['userId'].toString();
    body = json['body'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['body'] = body;
    return data;
  }
}



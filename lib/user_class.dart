import 'dart:convert';

class User {
  String username;
  String name;

  User(this.name, this.username);

  factory User.fromJson(dynamic json) {
    return User(json['name'].toString(), json['username'].toString());
  }

  @override
  String toString() {
    return '{ $name, $username }';
  }
}

class PostAndUserData {
  String name;
  String username;
  String body;
  bool likePost;

  // ignore: avoid_positional_boolean_parameters
  PostAndUserData(this.name, this.username, this.body,this.likePost);
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



import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:techpost/user_class.dart';
import 'package:http/http.dart' as http;

class ApiChangeNotify extends ChangeNotifier {
  final List<PostAndUserData> mergeData = [];
  List<PostAndUserData> _mergeDataList = [];

  List<PostAndUserData> get mergeDataList => _mergeDataList;

  set mergeDataList(List<PostAndUserData> value) {
    _mergeDataList = value;
    notifyListeners();
  }
  ApiChangeNotify(){
    apiMergeData();
  }
  Future<List<PostAndUserData>> apiMergeData() async {
    final List<Post> postList = await postData();
    for (final postId in postList) {
      final User userName = await userData(postId.userId.toString());

      mergeData.add(PostAndUserData(userName.name, userName.username, postId.body));
      mergeDataList=mergeData.toList();
    }
    notifyListeners();
    return mergeDataList;
  }

  Future<List<Post>> postData() async {
    final response =
        await http.get("https://jsonplaceholder.typicode.com/posts");
    if (response.statusCode == 200) {
      return postFromJson(response.body);
    } else {
      notifyListeners();
      return throw Exception('Failed to run');
    }
  }

  Future<User> userData(String num) async {
    final response =
        await http.get("https://jsonplaceholder.typicode.com/users/$num");

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      notifyListeners();
      return throw Exception('Failed to run');
    }
  }
}

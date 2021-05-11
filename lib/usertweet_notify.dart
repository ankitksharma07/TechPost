import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techpost/user_class.dart';
import 'package:http/http.dart' as http;

class UserTweetNotify extends ChangeNotifier {
  final List<PostAndUserData> mergeData = [];
  List<PostAndUserData> _mergeDataList = [];

  // ignore: unnecessary_getters_setters
  List<PostAndUserData> get mergeDataList => _mergeDataList;

  // ignore: unnecessary_getters_setters
  set mergeDataList(List<PostAndUserData> value) {
    _mergeDataList = value;
    //notifyListeners();
  }

  UserTweetNotify() {
    apiMergeData();
  }

  Future<List<PostAndUserData>> apiMergeData() async {
    final List<Post> postList = await postData();
    for (final postId in postList) {
      final User userName = await userData(postId.userId.toString());

      mergeData.add(PostAndUserData(
          userName.name, userName.username, postId.body, false));
      mergeDataList = mergeData.toList();
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
      return throw Exception('Failed to run');
    }
  }

  Future<User> userData(String num) async {
    final response =
        await http.get("https://jsonplaceholder.typicode.com/users/$num");

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      return throw Exception('Failed to run');
    }
  }

  bool postLike(int index) {
    if (mergeDataList[index].likePost == false) {
      notifyListeners();
      return mergeDataList[index].likePost = true;
    } else {
      notifyListeners();
      return mergeDataList[index].likePost = false;
    }
  }
}

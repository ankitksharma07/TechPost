import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techpost/usertweet_notify.dart';

class PassDataItem extends StatefulWidget {
  @override
  _PassDataItemState createState() => _PassDataItemState();
}

class _PassDataItemState extends State<PassDataItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // automaticallyImplyLeading: false,
        title: const Text('User Profile '),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            userProfile(),
          ],
        ),
      ),
    );
  }
}

Widget userProfile() {
  return Expanded(
    child: Consumer<UserTweetNotify>(
      builder: (context, viewModel, _) {
        return ListView.builder(
          itemCount: viewModel.userProfileData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  "Name:- ${viewModel.userProfileData[index]}",
                  style: const TextStyle(
                      color: Color.fromARGB(250, 100, 150, 220), fontSize: 18),
                ),
              ),
            );
          },
        );
      },
    ),
  );
}

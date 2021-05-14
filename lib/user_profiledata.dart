import 'package:flutter/material.dart';
import 'package:techpost/user_class.dart';

class UserProfile extends StatefulWidget {
  final UserProfileData value;

  const UserProfile({Key key, this.value}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body: Card(
        elevation: 3,
        child: ListTile(
          title: Text(
            'User_Name: ${widget.value.name}'
            '\nEmail: ${widget.value.email}'
            '\nNumber:${widget.value.phone}'
            '\nAddress[Geo]:'
            '\nlat:- ${widget.value.lat}'
            '\nlng:-${widget.value.lng}',
            style: const TextStyle(color: Colors.lightBlue),
          ),
          trailing: IconButton(
              icon: const Icon(
                Icons.edit,
                color: Colors.lightBlue,
              ),
              onPressed: () {}),
        ),
      ),
    );
  }
}

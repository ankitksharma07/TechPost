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
      // ignore: sized_box_for_whitespace
      body: Container(
        height: 150,
        width: 420,
        child: Card(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'User_Name: ${widget.value.name}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'User_Mail_ID : ${widget.value.email}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text(
                  'Phone_Number : ${widget.value.phone}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  'Address[Geo] : lng:-${widget.value.lng} lat:-${widget.value.lat}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Positioned(
                left: 355,
                child: IconButton(
                  tooltip: "Edit Profile",
                  icon: const Icon(
                    Icons.edit,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class UpdateUserProfile extends StatefulWidget {
  @override
  _UpdateUserProfileState createState() => _UpdateUserProfileState();
}

class _UpdateUserProfileState extends State<UpdateUserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Update Profile"),
      ),
    );
  }
}

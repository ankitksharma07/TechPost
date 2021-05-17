import 'package:flutter/material.dart';
import 'package:techpost/user_class.dart';

class UserProfile extends StatefulWidget {
  final PostAndUserData value;

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
              onPressed: () {
                setState(() {
                  final route = MaterialPageRoute(
                    builder: (BuildContext context) =>UpdateProfile(
                        value:   PostAndUserData(
                            widget.value.username,
                            widget.value.name,
                            widget.value.body,
                            false,
                            widget.value.email,
                            widget.value.phone,
                            widget.value.lat,
                            widget.value.lng,
                        )),
                  );
                  Navigator.of(context).push(route);
                });
              }),
        ),
      ),
    );
  }
}
class UpdateProfile extends StatefulWidget {
  final PostAndUserData value;

  const UpdateProfile({Key key, this.value}) : super(key: key);
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final TextEditingController updateName = TextEditingController();
  final TextEditingController updateMail = TextEditingController();
  final TextEditingController updatePhone = TextEditingController();
  final TextEditingController updateLat = TextEditingController();
  final TextEditingController updateLng= TextEditingController();

  OutlineInputBorder borderDesign() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      borderSide: BorderSide(color: Colors.blue),
    );
  }
  @override
  Widget build(BuildContext context) {
    updateName.text=widget.value.name;
    updateMail.text=widget.value.email;
    updatePhone.text=widget.value.phone;
    updateLat.text=widget.value.lat;
    updateLng.text=widget.value.lng;
    // ignore: avoid_unnecessary_containers
    return Scaffold(
    appBar:AppBar(
      title:const Text("UPDATE USER DATA")
    ),
        // ignore: avoid_unnecessary_containers
        body:Container(
          padding: const EdgeInsets.only(top:10),
      child:Column(
        children: [
          TextFormField(
            controller:  updateName,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              labelText: "User Name",
              enabledBorder: borderDesign(),
              focusedBorder: borderDesign(),
              errorBorder: borderDesign(),
              focusedErrorBorder: borderDesign(),
              hintStyle:
              const TextStyle(color: Colors.black, fontSize: 15),

            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller:  updateMail,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              labelText: "User Mail_ID",
              enabledBorder: borderDesign(),
              focusedBorder: borderDesign(),
              errorBorder: borderDesign(),
              focusedErrorBorder: borderDesign(),
              hintStyle:
              const TextStyle(color: Colors.black, fontSize: 15),

            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: updatePhone,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              labelText: "User Number",
              enabledBorder: borderDesign(),
              focusedBorder: borderDesign(),
              errorBorder: borderDesign(),
              focusedErrorBorder: borderDesign(),
              hintStyle:
              const TextStyle(color: Colors.black, fontSize: 15),

            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller:  updateLat,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              labelText: "Address[Geo]-lat",
              enabledBorder: borderDesign(),
              focusedBorder: borderDesign(),
              errorBorder: borderDesign(),
              focusedErrorBorder: borderDesign(),
              hintStyle:
              const TextStyle(color: Colors.black, fontSize: 15),

            ),
          ),
          const SizedBox(height: 10),
          TextFormField(

            controller:  updateLng,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              labelText: "Address[Geo]-lng",
              enabledBorder: borderDesign(),
              focusedBorder: borderDesign(),
              errorBorder: borderDesign(),
              focusedErrorBorder: borderDesign(),
              hintStyle:
              const TextStyle(color: Colors.black, fontSize: 15),

            ),
          ),
        ],
      )
    ) );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techpost/user_class.dart';



// ignore: must_be_immutable
class UpdateProfile extends StatefulWidget {
  User updateValue;

  UpdateProfile({Key key, this.updateValue}) : super(key: key);
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  TextEditingController updateName = TextEditingController();
  TextEditingController updateMail = TextEditingController();
  TextEditingController updatePhone = TextEditingController();
  TextEditingController updateLat = TextEditingController();
  TextEditingController updateLng = TextEditingController();

  OutlineInputBorder borderDesign() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      borderSide: BorderSide(color: Colors.blue),
    );
  }

  // @override
  // void initState() {
  //   super.initState();
  //   updateName = TextEditingController(text: widget.updateValue.name);
  //   updateMail = TextEditingController(text: widget.updateValue.email);
  //   updatePhone = TextEditingController(text: widget.updateValue.phone);
  //   updateLat = TextEditingController(text: widget.updateValue.lat);
  //   updateLng = TextEditingController(text: widget.updateValue.lng);
  // }

  @override
  Widget build(BuildContext context) {
    updateName.text=widget.updateValue.name;
    updateMail.text=widget.updateValue.email;
    updatePhone.text=widget.updateValue.phone;
    updateLat.text=widget.updateValue.lat;
    updateLng.text=widget.updateValue.lng;
    return Scaffold(
        appBar: AppBar(title: const Text("UPDATE USER DATA")),
        body: Container(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              TextFormField(
                controller: updateName,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "User Name",
                  enabledBorder: borderDesign(),
                  focusedBorder: borderDesign(),
                  errorBorder: borderDesign(),
                  focusedErrorBorder: borderDesign(),
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: updateMail,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "User Mail_ID",
                  enabledBorder: borderDesign(),
                  focusedBorder: borderDesign(),
                  errorBorder: borderDesign(),
                  focusedErrorBorder: borderDesign(),
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: updatePhone,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "User Number",
                  enabledBorder: borderDesign(),
                  focusedBorder: borderDesign(),
                  errorBorder: borderDesign(),
                  focusedErrorBorder: borderDesign(),
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: updateLat,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Address[Geo]-lat",
                  enabledBorder: borderDesign(),
                  focusedBorder: borderDesign(),
                  errorBorder: borderDesign(),
                  focusedErrorBorder: borderDesign(),
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: updateLng,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Address[Geo]-lng",
                  enabledBorder: borderDesign(),
                  focusedBorder: borderDesign(),
                  errorBorder: borderDesign(),
                  focusedErrorBorder: borderDesign(),
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: RaisedButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    Navigator.pop(
                        context,
                        User(
                            name: updateName.text,
                            email: updateMail.text,
                            phone: updatePhone.text,
                            lat: updateLat.text,
                            lng: updateLng.text));
                  },
                  child: const Text("Update",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white)),
                ),
              ),
            ],
          ),
        ));
  }
}
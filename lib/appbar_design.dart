import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techpost/Asset_data.dart';

class Appbar_design extends StatelessWidget {
  final data = new Assetdata();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  data.profile,
                  fit: BoxFit.contain,
                )),
            title: Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                data.imageData,
                fit: BoxFit.contain,
                height: 28,
              )
            ])),
            actions: [
              Image.asset(data.strike),
            ]),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home_outlined),
                  color: Colors.black,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.mail_outline),
                  color: Colors.black,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none),
                  color: Colors.black,
                ),
                label: "",
              )
            ]));
  }
}

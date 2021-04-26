import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techpost/asset_data.dart';

class AppbarDesign extends StatelessWidget {
  final data =  DataFile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Image.asset(
                  data.profile,
                  fit: BoxFit.contain,
                ),
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
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home_outlined),
                  color: Colors.black54,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: Colors.black54,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.mail_outline),
                  color: Colors.black54,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none),
                  color: Colors.black54,
                ),
                label: "",
              )
            ]));
  }
}

//import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techpost/asset_data.dart';

//import 'package:techpost/user_class.dart';
//import 'package:http/http.dart' as http;

class AppbarDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarDesign(),
    );
  }
}

// Future<List<Users>> fetchData() async {
//   final response = await http.get('https://jsonplaceholder.typicode.com/users');
//   if (response.statusCode == 200) {
//     log('${response.body}');
//     return usersFromJson(response.body);
//   } else {
//     throw Exception('Failed to load album');
//   }
// }

class AppBarDesign extends StatefulWidget {
  @override
  _AppBarDesignState createState() => _AppBarDesignState();
}

class _AppBarDesignState extends State<AppBarDesign> {
  final data = DataFile();

  // Future<Users> futureAlbum = fetchAlbum();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: const CircleAvatar(
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/Ankit.jpg'),
                )),
            title: Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                data.imageData,
                fit: BoxFit.contain,
                height: 40,
              )
            ])),
            actions: [
              Image.asset(data.strike),
            ]),
        body: Container(
          height: 180,
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black54))),
          child: Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                    const Padding(
                      padding:  EdgeInsets.only(left: 45, top: 10),
                      child: Icon(
                        Icons.assistant,
                        size: 17,
                        color: Colors.black54,
                      )),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text("Hello Twitter"),
                  )
                ],
              ),
              Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 7),
                      child:
                          CircleAvatar(child: CircleAvatar(child: Text("A"))),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(bottom: 21, left: 5),
                        child: Text(
                          "AnkitSharma",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(bottom: 21, left: 5),
                        child: Icon(
                          Icons.verified,
                          size: 18,
                          color: Colors.lightBlue,
                        )),
                    const Padding(
                        padding: EdgeInsets.only(bottom: 21, left: 5),
                        child: Text(
                          "@Ankit -3h",
                          style: TextStyle(fontSize: 13),
                        )),
                  ]),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 58),
                    child: Text(
                      "whenever you fill like you are failed in something, \n"
                      "put on your bill gates hat and look for the\nsuccess in the failure .",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 60, top: 10),
                      child: Image.asset(
                        data.comment,
                        fit: BoxFit.contain,
                        height: 20,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 60, top: 15),
                      child: Image.asset(
                        data.retweet,
                        fit: BoxFit.contain,
                        height: 20,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 60, top: 10),
                      child: Image.asset(
                        data.heart,
                        fit: BoxFit.contain,
                        height: 20,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 60, top: 10),
                      child: Image.asset(
                        data.share,
                        fit: BoxFit.contain,
                        height: 20,
                      ))
                ],
              )
            ],
          ),
        ),
        // body: Container(
        //     margin: EdgeInsets.only(top: 5, left: 2, right: 2),
        //     child: FutureBuilder(
        //         future: fetchData(),
        //         builder: (context, AsyncSnapshot<List<Users>> snapshot) {
        //           if (snapshot.hasData) {
        //             return ListView.builder(
        //                 itemCount: snapshot.data.length,
        //                 itemBuilder: (context, index) {
        //                   var name = snapshot.data[index].name[0].toUpperCase();
        //
        //                   return Container(
        //                     decoration: BoxDecoration(
        //                         border: Border(
        //                       bottom: BorderSide(color: Colors.black),
        //                     )),
        //                     height: 120,
        //                     child: Row(
        //                       children: [
        //                         ListTile(
        //                           title: Text(
        //                             '${snapshot.data[index].name}  @${snapshot.data[index].username}',
        //                             style: TextStyle(color: Colors.black),
        //                           ),
        //                           // subtitle: Text('${snapshot.data[index].email}',
        //                           //     style: TextStyle(color: Colors.black)),
        //                           leading: CircleAvatar(
        //                             backgroundColor: Colors.black,
        //                             child: Text(name),
        //                             //backgroundImage: NetworkImage(user.avatar),
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   );
        //                 });
        //           } else {
        //             return Center(child: CircularProgressIndicator());
        //           }
        //         })),
        bottomNavigationBar: BottomNavigationBar(items: [
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

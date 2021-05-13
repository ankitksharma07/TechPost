import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techpost/asset_data.dart';
import 'package:techpost/user_profiledata.dart';
import 'usertweet_notify.dart';

class ApiMergingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserTweetNotify>(
      create: (BuildContext context) {
        return UserTweetNotify();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppBarDesign(),
      ),
    );
  }
}

class AppBarDesign extends StatefulWidget {
  @override
  _AppBarDesignState createState() => _AppBarDesignState();
}

class _AppBarDesignState extends State<AppBarDesign> {
  final data = DataFile();

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserTweetNotify>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const CircleAvatar(
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/Ankit.jpg'),
          ),
        ),
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                data.imageData,
                fit: BoxFit.contain,
                height: 35,
              ),
            ],
          ),
        ),
        actions: [
          Image.asset(data.strike),
        ],
      ),
      body: viewModel.mergeData.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: viewModel.mergeData.length,
              itemBuilder: (context, index) {
                final initial =
                    viewModel.mergeDataList[index].name[0].toUpperCase();
                return ListTile(
                  title: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 40, top: 6),
                                  child: Image.asset(
                                    data.heartsolid,
                                    fit: BoxFit.contain,
                                    height: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    "  Rajveer shah liked and sid liked ",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 26),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        viewModel.passUserData(
                                          viewModel.mergeDataList[index].name
                                              .toUpperCase(),
                                          viewModel.mergeDataList[index].email
                                              .toUpperCase(),
                                          viewModel.mergeDataList[index].phone
                                              .toUpperCase(),
                                          viewModel.mergeDataList[index].lat
                                              .toUpperCase(),
                                          viewModel.mergeDataList[index].lng
                                              .toUpperCase(),
                                        );
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return PassDataItem();
                                            },
                                          ),
                                        );
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: 28,
                                      child: CircleAvatar(
                                        child: Text(initial),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2, bottom: 19),
                                  child: Text(
                                    viewModel.mergeDataList[index].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 19),
                                  child: Icon(
                                    Icons.verified,
                                    size: 18,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, bottom: 19),
                                  child: Text(
                                    viewModel.mergeDataList[index].username,
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 19),
                                  child: Text(
                                    "-10h",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 59, top: 43),
                                    child: Text(
                                      viewModel.mergeDataList[index].body,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 28,
                              left: 360,
                              child: Image.asset(
                                data.arrow,
                                fit: BoxFit.contain,
                                height: 6,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 60, bottom: 7),
                              child: Image.asset(
                                data.comment,
                                fit: BoxFit.contain,
                                height: 14,
                                color: Colors.black54,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 68, bottom: 7),
                              child: Image.asset(
                                data.retweet,
                                fit: BoxFit.contain,
                                height: 14,
                                color: Colors.black54,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 68, bottom: 7),
                              child: GestureDetector(
                                // ignore: unnecessary_parenthesis
                                onTap: (() {
                                  viewModel.postLike(index);
                                }),
                                child: Icon(
                                  viewModel.mergeDataList[index].likePost ==
                                          false
                                      ? Icons.favorite_border
                                      : Icons.favorite,
                                  color:
                                      viewModel.mergeDataList[index].likePost ==
                                              true
                                          ? Colors.red
                                          : null,
                                  size: 18,
                                ),
                              ),
                              // child: Image.asset(
                              //   data.heart,
                              //   fit: BoxFit.contain,
                              //   height: 14,
                              //   color: Colors.black54,
                              // ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 68, bottom: 7),
                              child: Image.asset(
                                data.share,
                                fit: BoxFit.contain,
                                height: 14,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AppBarDesign(),
            ),
          );
        },
        child: Image.asset(
          data.addbutton,
          fit: BoxFit.contain,
          height: 22,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(elevation: 3.5, items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              data.home,
              fit: BoxFit.contain,
              height: 20,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            data.search,
            fit: BoxFit.contain,
            height: 20,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            data.mail,
            fit: BoxFit.contain,
            height: 20,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            data.bell,
            fit: BoxFit.contain,
            height: 20,
          ),
          label: "",
        )
      ]),
    );
  }
}

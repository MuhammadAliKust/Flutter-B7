import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(tabs: [
            Text("Home"),
            Text("Favorite"),
            Text("Person"),
          ]),
        ),
        body: TabBarView(children: [
          Center(child:Text(
            "Home",
            style: TextStyle(fontSize: 30),
          )),
          Center(child:Text(
            "Favorite",
            style: TextStyle(fontSize: 30),
          )),
          Center(child:Text(
            "Profile",
            style: TextStyle(fontSize: 30),
          )),
        ]),
      ),
    );
  }
}

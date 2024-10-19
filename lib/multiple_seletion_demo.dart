import 'dart:developer';

import 'package:flutter/material.dart';

class SingleSeletionDemo extends StatefulWidget {
  SingleSeletionDemo({super.key});

  @override
  State<SingleSeletionDemo> createState() => _SingleSeletionDemoState();
}

class _SingleSeletionDemoState extends State<SingleSeletionDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection Demo"),
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        return ListTile(
          onTap: () {
            if (selectedIndex.contains(i)) {
              selectedIndex.remove(i);
            } else {
              selectedIndex.add(i);
            }

            setState(() {});
          },
          tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white,
          leading: Icon(Icons.notifications),
          title: Text("Selected Index: ${selectedIndex.toString()}"),
          subtitle: Text("Loop Index: $i"),
        );
      }),
    );
  }
}

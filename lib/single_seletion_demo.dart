import 'package:flutter/material.dart';

class SingleSeletionDemo extends StatefulWidget {
  SingleSeletionDemo({super.key});

  @override
  State<SingleSeletionDemo> createState() => _SingleSeletionDemoState();
}

class _SingleSeletionDemoState extends State<SingleSeletionDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection Demo"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                selectedIndex = i;
                setState(() {});
              },
              tileColor: selectedIndex == i ? Colors.blue : Colors.white,
              leading: Icon(Icons.notifications),
              title: Text("Selected Index: $selectedIndex"),
              subtitle: Text("Loop Index: $i"),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          }),
    );
  }
}

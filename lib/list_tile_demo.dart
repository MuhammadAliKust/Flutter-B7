import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Tile Demo"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification Title $i"),
                subtitle: Text("Notification Sub Title"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.edit),
                    Icon(Icons.delete),
                  ],
                ),
                tileColor: Colors.blue,
              );
            }));
  }
}

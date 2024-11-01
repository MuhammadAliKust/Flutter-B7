import 'package:arid_student/providers/name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenBView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameProvider = Provider.of<NameProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Center(
        child: Text(
          nameProvider.getName(),
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

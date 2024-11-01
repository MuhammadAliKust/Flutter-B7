import 'package:arid_student/providers/name.dart';
import 'package:arid_student/screen_b.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenAView extends StatelessWidget {
  ScreenAView({super.key});

  String name = "Ali";

  @override
  Widget build(BuildContext context) {
    var nameProvider = Provider.of<NameProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              nameProvider.setName('Alii');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenBView()));
            },
            child: Text("Go to Screen B")),
      ),
    );
  }
}

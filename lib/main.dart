import 'package:arid_student/asset_image_demo.dart';
import 'package:arid_student/login.dart';
import 'package:flutter/material.dart';

import 'image_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView()
    );
  }
}

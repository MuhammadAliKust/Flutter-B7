import 'package:arid_student/asset_image_demo.dart';
import 'package:arid_student/bottom_bar_view.dart';
import 'package:arid_student/dialog_box_view.dart';
import 'package:arid_student/google_maps.dart';
import 'package:arid_student/grid_view_demo.dart';
import 'package:arid_student/list_tile_demo.dart';
import 'package:arid_student/login.dart';
import 'package:arid_student/page_view.dart';
import 'package:arid_student/providers/name.dart';
import 'package:arid_student/screen_a.dart';
import 'package:arid_student/search_view.dart';
import 'package:arid_student/single_seletion_demo.dart';
import 'package:arid_student/tabbar_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'image_demo.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => NameProvider())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SearchView());
  }
}

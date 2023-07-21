import 'package:containers_sizedbox/Widgets/buttons.dart';
import 'package:containers_sizedbox/Widgets/list_grid.dart';
import 'package:containers_sizedbox/Widgets/rawscols.dart';
import 'package:flutter/material.dart';

import 'Widgets/container_sized.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple
        // appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
      ),
      // home: const Container_Sized(),
      home: const ListGrid(),
    );
  }
}

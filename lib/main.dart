import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ethereum_app/screens/home_screen.dart';
import 'package:flutter_ethereum_app/screens/placebid_screen.dart';
import 'package:flutter_ethereum_app/screens/welcome_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'OpenSans'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

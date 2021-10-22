import 'package:flutter/material.dart';
import 'package:it_supporter/screens/authen_screen/login_screen.dart';
import "package:get/get.dart";
// import 'package:it_supporter/screens/request_screen/request_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

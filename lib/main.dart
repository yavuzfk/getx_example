import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/old_files/home_view.dart';
import 'package:getx_tutorial/screens/welcome_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    GetMaterialApp(
      title: "Weight Tracket",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black)),
      home: const WelcomePage(),
    ),
  );
}

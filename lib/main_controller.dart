import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/graph_screen.dart';
import 'package:getx_tutorial/history_screen.dart';

class Controller extends GetxController {
  Widget activeScreen = const GraphScreen().obs as Widget;
  void changeScreen(int index) {
    if (index == 0) {
      activeScreen = const GraphScreen();
    } else {
      activeScreen = const HistoryScreen();
    }
  }
}

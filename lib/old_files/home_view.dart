import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/old_files/graph_screen.dart';
import 'package:getx_tutorial/old_files/history_screen.dart';
import 'package:getx_tutorial/old_files/main_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Get.put(Controller());
  final int _bottomNavIndex = 0;
  int currentTap = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("counter")),
      body: currentTap == 0 ? const GraphScreen() : const HistoryScreen(),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,

        onPressed: () {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: Get.height / 12, //device height
        icons: const <IconData>[
          Icons.show_chart,
          Icons.history,
        ],
        activeIndex: currentTap,
        iconSize: 30,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentTap = index;
          });
        },
        //other params
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:propluslogics_text/controller/home_controller.dart';
import 'package:propluslogics_text/view/Screen1/screen1.dart';
import 'package:propluslogics_text/view/Screen2/screen2.dart';
import 'package:propluslogics_text/view/Screen3/screen3.dart';

class ScreenManin extends StatelessWidget {
 ScreenManin({Key? key}) : super(key: key);


   final _pages = [

    Screen1(),
    Screen2(),
    Screen3(),
    
  ];

  @override
 Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: GetBuilder<HomeController>(builder: (controller) {
        return BottomNavigationBar(
          currentIndex: controller.currentSelectedindex,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 10, color: Colors.black),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 9,
            color: Colors.white,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'CATEGORIES',
            ),
           
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'PROFILE',
            ),
          ],
          onTap: (newindex) {
            homeController.onSelectedItem(newindex);

          },
        );
      }),
      body: GetBuilder<HomeController>(builder: (controller) {
        return _pages[controller.currentSelectedindex];
      }),
     
    );
  }
}

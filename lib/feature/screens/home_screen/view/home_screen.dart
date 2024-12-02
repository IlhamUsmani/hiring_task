import 'package:flutter/material.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/bottom_navigation.dart';
import 'package:hiring_task/constants.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/drawer/list_of_drawer_icons.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/extended_task_quick.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/list_of_task_item.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/project_update.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/text_project.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenSize(context);

    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: const BottomNavigation(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: white),
        backgroundColor: lightGrey,
        actions: [
          SizedBox(
              height: ScreenSize.height * zeroPointZeroSix,
              child: Image.asset(profileIcon)),
          SizedBox(
            width: ScreenSize.width * zeroPointZeroOne,
          )
        ],
      ),
      drawer: Drawer(
          shape: const ContinuousRectangleBorder(),
          backgroundColor: lightGrey,
          child: const ListOfDrawerIcons()),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: darkGrey,
                    height: ScreenSize.height * zeroPointOne,
                  ),
                  Container(
                    color: darkGrey,
                    child: Column(
                      children: [
                        SizedBox(
                            height: ScreenSize.height * zeroPointTwo,
                            child: const ListOfTaskItem()),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenSize.height * zeroPointZeroTwoFive),
                  SizedBox(
                      height: ScreenSize.height * zeroPointSixFive,
                      child: const ProjectUpdateWidget()),
                  SizedBox(height: ScreenSize.height * zeroPointZeroTwoZero),
                  SizedBox(
                      width: ScreenSize.width * zeroPointNineFive,
                      child: const TasksQuickView()),
                  SizedBox(height: ScreenSize.height * zeroPointZeroThreeZero),
                ],
              ),
              SizedBox(height: ScreenSize.height * zeroPointZeroOne),
              Positioned(
                  top: ScreenSize.height * zeroPointZeroTwoZero,
                  width: ScreenSize.width * zeroPointNineFive,
                  left: ScreenSize.width * zeroPointZeroThreeZero,
                  child: SizedBox(
                      width: ScreenSize.width, child: const ProjectListTile())),
            ],
          ),
        ),
      ),
    );
  }
}

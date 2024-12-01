import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/constants.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/drawer_exp_tile.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class ListOfDrawerIcons extends StatelessWidget {
  const ListOfDrawerIcons({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);
    final Size(:height, :width) = MediaQuery.of(context).size;
    return SizedBox(
      height: 500,
      width: width,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: width,
              color: const Color.fromARGB(255, 39, 39, 39),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                              leading: Image.asset(profileIcon),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    userName,
                                    style: TextStyle(color: white),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 3, right: 3),
                                    decoration: const BoxDecoration(
                                      color: white,
                                    ),
                                    child: const Text(
                                      userDesignation,
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: ListView.builder(
                itemCount: drawerItems.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return DrawerExpTile(
                      icon: drawerItems[index][1],
                      title: drawerItems[index][0],
                      items: [
                        Container(
                          height: height * 0.16,
                          color: white,
                          child: const Column(
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              ExpenstionTileSubItem(
                                  icon: newProjectIcon, title: newProject),
                              ExpenstionTileSubItem(
                                  icon: Icons.stacked_bar_chart,
                                  title: myProjects),
                            ],
                          ),
                        )
                      ],
                    );
                  } else if (index > 7) {
                    log(drawerItems[index][0]);

                    return DrawerExpTile(
                        enabled: false,
                        icon: drawerItems[index][1],
                        title: drawerItems[index][0]);
                  } else if (index == 7) {
                    return DrawerExpTile(
                      icon: drawerItems[index][1],
                      title: drawerItems[index][0],
                      enabled: false,
                      widget: Center(
                        child: Container(
                          height: ScreenSize.height * zeroPointZeroFourZero,
                          width: ScreenSize.width * 0.5,
                          decoration: BoxDecoration(
                              color: lightGreyshade400,
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                            child: Text(
                              comingSoon,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: lightGreyshade600,
                                  fontSize: 7),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  return DrawerExpTile(
                      icon: drawerItems[index][1],
                      title: drawerItems[index][0]);
                }),
          ),
        ],
      ),
    );
  }
}

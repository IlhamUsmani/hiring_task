import 'package:flutter/material.dart';
import 'package:hiring_task/constants.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/drawer/drawer_exp_tile.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return DrawerExpTile(
              icon: drawerItems[index][1],
              title: drawerItems[index][0],
              items: [
                Container(
                  height: ScreenSize.height * zeroPointOneSix,
                  color: white,
                  child: const Column(
                    children: [
                      Spacer(flex: 1),
                      ExpenstionTileSubItem(
                        icon: newProjectIcon,
                        title: newProject,
                      ),
                      ExpenstionTileSubItem(
                        icon: Icons.stacked_bar_chart,
                        title: myProjects,
                      ),
                    ],
                  ),
                )
              ],
            );
          } else if (index > 7) {
            return DrawerExpTile(
              enabled: false,
              icon: drawerItems[index][1],
              title: drawerItems[index][0],
            );
          } else if (index == 7) {
            return DrawerExpTile(
              icon: drawerItems[index][1],
              title: drawerItems[index][0],
              enabled: false,
              widget: Center(
                child: Container(
                  height: ScreenSize.height * zeroPointZeroFourZero,
                  width: ScreenSize.width * zeroPointFive,
                  decoration: BoxDecoration(
                    color: lightGreyshade400,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      comingSoon,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: lightGreyshade600,
                        fontSize: 7,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return DrawerExpTile(
            icon: drawerItems[index][1],
            title: drawerItems[index][0],
          );
        },
      ),
    );
  }
}

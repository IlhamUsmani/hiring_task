import 'package:flutter/material.dart';
import 'package:hiring_task/constants.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/drawer/drawer_listview.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/drawer/header.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/drawer_exp_tile.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class ListOfDrawerIcons extends StatelessWidget {
  const ListOfDrawerIcons({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);

    return SizedBox(
      height: ScreenSize.height * zeroPointFive,
      width: ScreenSize.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const DrawerListView(),
            SizedBox(
              height: ScreenSize.height * zeroPointOneFive,
            ),
            const DrawerExpTile(
              backgroundColor: darkestGrey,
              icon: logoutIcon,
              title: logout,
              enabled: false,
            )
          ],
        ),
      ),
    );
  }
}

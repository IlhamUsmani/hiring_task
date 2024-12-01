import 'package:flutter/material.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/constants.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);
    return BottomNavigationBar(
      backgroundColor: white,
      showSelectedLabels: true,
      selectedItemColor: black,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
          color: darkestGrey, fontSize: twelve, fontWeight: FontWeight.bold),
      items: [
        BottomNavigationBarItem(
          label: home,
          icon: SizedBox(
            height: ScreenSize.height * zeroPointZeroThreeZero,
            child: Image.asset(
              homeIcon,
              color: darkestGrey,
            ),
          ),
        ),
        BottomNavigationBarItem(
            icon: Icon(newProjectIcon, color: lightGreyshade800),
            label: quickAction),
        BottomNavigationBarItem(
          label: discussion,
          icon: SizedBox(
            height: ScreenSize.height * zeroPointZeroThreeZero,
            child: Image.asset(
              discussionIcon,
              color: darkestGrey,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: needHelp,
          icon: SizedBox(
            height: ScreenSize.height * zeroPointZeroFourZero,
            child: Image.asset(
              needHelpIcon,
              color: darkestGrey,
            ),
          ),
        )
      ],
    );
  }
}

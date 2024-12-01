import 'package:flutter/material.dart';

import 'package:hiring_task/feature/screens/home_screen/view/widgets/constants.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/custom_search_bar.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/expanded_searc_bar.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class ProjectUpdateWidget extends StatelessWidget {
  const ProjectUpdateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:height, :width) = MediaQuery.of(context).size;

    return Container(
      width: ScreenSize.width * zeroPointNineTwo,
      height: ScreenSize.height * zeroPointSeven,
      decoration: BoxDecoration(
        color: lightGreyshade200,
        borderRadius: BorderRadius.circular(eight),
      ),
      padding: const EdgeInsets.all(sixteen),
      child: Column(
        children: [
          const ProjectUpdateSearchBar(),
          SizedBox(height: ScreenSize.height * zeroPointZeroOne),
          const UpdateWidget(),
          SizedBox(height: ScreenSize.height * zeroPointZeroOne),
          CustomSearchBar(
            width: width * zeroPointEightThree,
            searchText: safteyText,
          ),
        ],
      ),
    );
  }
}

class UpdateWidget extends StatelessWidget {
  const UpdateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(one),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(eight),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                flex: 5,
                child: Text(
                  update,
                  style: TextStyle(fontSize: sixteen),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                    height: ScreenSize.height * zeroPointZeroTwoZero,
                    width: ScreenSize.width * zeroPointZeroThreeZero,
                    child: Image.asset(updownIcon)),
              ),
              const Spacer(
                flex: 15,
              ),
            ],
          ),
          SizedBox(height: ScreenSize.height * zeroPointZeroOne),
          Container(
            padding: const EdgeInsets.all(thirteen),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(eight),
              color: white,
            ),
            child: const Center(
              child: Text(
                projectUpdate,
                style: TextStyle(fontSize: fourteen),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(ten),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(eight),
                  bottomRight: Radius.circular(eight)),
              color: darkestGrey,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_month_sharp, color: white),
                    SizedBox(width: eight),
                    Text(date,
                        style: TextStyle(fontSize: twelve, color: white)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:hiring_task/feature/screens/home_screen/view/widgets/constants.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.image, required this.text});

  final String image;
  final String text;
  static const int four = 4;
  static const int one = 1;

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);

    return Container(
      width: ScreenSize.width * zeroPointTwoFive,
      height: ScreenSize.height * zeroPointOneFive,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(eight),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: one,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: ScreenSize.height * zeroPointZeroFiveFive,
                  width: ScreenSize.width * zeroPointZeroFiveFive,
                  child: Image.asset(image, color: lightGreyshade700)),
              const Text(
                number,
                style: TextStyle(
                  fontSize: twenty,
                  color: darkGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: one,
          ),
          Expanded(
            flex: four,
            child: Container(
              height: ScreenSize.height * zeroPointZeroNineFive,
              width: ScreenSize.width,
              decoration: BoxDecoration(
                  color: lightGreyshade100,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(eight),
                    bottomRight: Radius.circular(eight),
                  )),
              child: Center(
                child: SizedBox(
                  width: ScreenSize.width * 0.21,
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

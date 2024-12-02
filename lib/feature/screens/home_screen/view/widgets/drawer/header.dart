import 'package:flutter/material.dart';
import 'package:hiring_task/constants.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width,
      color: darkestGrey,
      child: Center(
        child: SizedBox(
          height: ScreenSize.height * zeroPointTwo,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: ScreenSize.width * zeroPointZeroEight,
                  child: Image.asset(profileIcon, fit: BoxFit.cover),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      userName,
                      style: TextStyle(color: white),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      decoration: const BoxDecoration(
                        color: white,
                      ),
                      child: const Text(
                        userDesignation,
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

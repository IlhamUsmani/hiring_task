import 'package:flutter/material.dart';
import 'package:hiring_task/constants.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key,
      required this.width,
      this.color = white,
      required this.searchText,
      this.fontSize = twelve});
  final double width;
  final Color? color;
  final String searchText;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);
    return Container(
      width: width,
      padding: const EdgeInsets.all(ten),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(eight),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            searchText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
          Row(
            children: [
              const Icon(Icons.search_rounded),
              RotatedBox(
                quarterTurns: three,
                child: SizedBox(
                  width: ScreenSize.width * zeroPointZeroFourZero,
                  child: Divider(
                    thickness: one,
                    color: lightGreyshade400,
                  ),
                ),
              ),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
        ],
      ),
    );
  }
}

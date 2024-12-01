import 'package:flutter/material.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/constants.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

typedef OnSelected = void Function(bool selected);

class FilterContainer extends StatelessWidget {
  const FilterContainer(
      {super.key,
      required this.onSelected,
      required this.color,
      required this.text});
  final OnSelected onSelected;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      shape: const ContinuousRectangleBorder(),
      label: Text(
        text,
      ),
      selected: false,
      onSelected: onSelected,
      backgroundColor: color,
      labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Expanded(
            flex: 19,
            child: Text(text, style: TextStyle(fontSize: 9, color: color))),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: ScreenSize.height * zeroPointZeroOneFive,
            child: Image.asset(
              updownIcon,
              color: color,
            ),
          ),
        ),
        const Spacer(
          flex: 13,
        )
      ]),
    );
  }
}

class MyDropDownMenu extends StatelessWidget {
  const MyDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const DropdownMenu(
      textStyle: TextStyle(fontSize: 12),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        constraints: BoxConstraints(maxWidth: 87, maxHeight: 50),
        fillColor: white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(five),
          ),
        ),
      ),
      initialSelection: '$ten',
      dropdownMenuEntries: [
        DropdownMenuEntry(
          label: '$ten',
          value: '$ten',
        ),
        DropdownMenuEntry(
          label: '$twenty',
          value: '$twenty',
        ),
        DropdownMenuEntry(
          label: '$thirty',
          value: '$thirty',
        ),
      ],
    );
  }
}

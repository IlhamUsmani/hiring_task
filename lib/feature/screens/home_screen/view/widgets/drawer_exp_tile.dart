import 'package:flutter/material.dart';
import 'package:hiring_task/constants.dart';

class DrawerExpTile extends StatelessWidget {
  const DrawerExpTile(
      {super.key,
      required this.title,
      required this.icon,
      this.enabled = true,
      this.widget,
      this.items = const [],
      this.backgroundColor = Colors.transparent});
  final String title;
  final String icon;
  final List<Widget> items;
  final bool? enabled;
  final Widget? widget;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      showTrailingIcon: enabled!,
      iconColor: white,
      collapsedBackgroundColor: backgroundColor,
      collapsedIconColor: white,
      enabled: enabled!,
      leading: SizedBox(
        height: 20,
        child: Image.asset(
          icon,
          color: white,
        ),
      ),
      title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 5,
                child: Text(
                  title,
                  style: const TextStyle(
                      color: white, fontWeight: FontWeight.bold),
                )),
            widget == null
                ? const Spacer(
                    flex: 3,
                  )
                : Expanded(flex: 4, child: widget!),
            widget != null
                ? const Spacer(
                    flex: 3,
                  )
                : const SizedBox()
          ]),
      children: items,
    );
  }
}

class ExpenstionTileSubItem extends StatelessWidget {
  const ExpenstionTileSubItem({super.key, this.title = '', this.icon});
  final String? title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title!),
    );
  }
}

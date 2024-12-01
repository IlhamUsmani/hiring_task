import 'package:flutter/material.dart';

import 'package:hiring_task/feature/screens/home_screen/view/widgets/constants.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class ProjectUpdateSearchBar extends StatefulWidget {
  const ProjectUpdateSearchBar({super.key});

  @override
  _ProjectUpdateSearchBarState createState() => _ProjectUpdateSearchBarState();
}

class _ProjectUpdateSearchBarState extends State<ProjectUpdateSearchBar> {
  bool isSearching = false;
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    _searchController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * zeroPointZeroSix,
      width: ScreenSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (!isSearching) ...[
            const Expanded(
              flex: 12,
              child: Text(
                projectUpdateText,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.all(12),
                color: darkestGrey,
                child: const Text(
                  markAsRead,
                  style: TextStyle(fontSize: 4.8, color: white),
                ),
              ),
            ),
          ],
          if (isSearching)
            Expanded(
              flex: 20,
              child: SizedBox(
                height: ScreenSize.height * zeroPointZeroSix,
                width: ScreenSize.width * zeroPointOneSeven,
                child: TextField(
                  controller: _searchController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    fillColor: white,
                    filled: true,
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: _searchController.text.isNotEmpty
                          ? const Icon(
                              Icons.clear,
                              color: Colors.grey,
                            )
                          : const SizedBox(),
                      onPressed: () {
                        setState(() {
                          if (_searchController.text.isNotEmpty) {
                            isSearching = !isSearching;
                          }
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          if (!isSearching)
            Expanded(
              flex: 3,
              child: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    if (isSearching) {
                      _searchController.clear();
                    }
                    isSearching = !isSearching;
                  });
                },
              ),
            ),
          const Spacer(),
          const Expanded(
            flex: 9,
            child: DropdownMenu(
              hintText: '10',
              textStyle: TextStyle(fontSize: 9),
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
              dropdownMenuEntries: [
                DropdownMenuEntry(
                  label: '10',
                  value: '10',
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
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 4,
            child: IconButton.filled(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(darkestGrey),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(five),
                    )))),
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_up_outlined)),
          ),
        ],
      ),
    );
  }
}

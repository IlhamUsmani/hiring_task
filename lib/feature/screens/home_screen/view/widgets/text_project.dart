import 'package:flutter/material.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/calender_containers.dart';
import 'package:hiring_task/constants.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/filter_container.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/filtered_list.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class ProjectListTile extends StatefulWidget {
  const ProjectListTile({super.key});

  @override
  State<ProjectListTile> createState() => _ProjectListTileState();
}

class _ProjectListTileState extends State<ProjectListTile> {
  List<Map<String, String>> projects = List.generate(
    10,
    (index) => {
      'name': 'First Research Project ${index + 1}',
      'status': ['On Going', 'Delayed', 'Completed'][index % 3],
    },
  );

  List<Map<String, String>> filteredProjects = [];

  bool _expansionChange = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: (value) {
        setState(() {
          if (!value) {
            _expansionChange = false;
          }
        });
      },
      iconColor: darkGrey,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(twelve)),
      ),
      collapsedShape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(twelve)),
      ),
      collapsedBackgroundColor: lightGreyshade200,
      backgroundColor: lightGreyshade200,
      leading: const Icon(Icons.search),
      title: const Text(
        searchTitle,
        style: TextStyle(
          color: darkGrey,
          fontSize: twelve,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: ScreenSize.height * zeroPointSeven),
          child: SingleChildScrollView(
              child: StatefulBuilder(
            builder: (context, setState) => Container(
              color: darkGrey,
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenSize.height * zeroPointZeroThreeZero,
                  ),
                  _expansionChange == true
                      ? const SizedBox()
                      : Row(
                          children: [
                            Expanded(
                              flex: 15,
                              child: TextField(
                                decoration: InputDecoration(
                                  constraints:
                                      const BoxConstraints(maxHeight: 50),
                                  hintText: search,
                                  hintStyle: const TextStyle(fontSize: 12),
                                  contentPadding:
                                      const EdgeInsets.only(top: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: const Icon(Icons.search,
                                      color: Colors.grey),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    filteredProjects = projects
                                        .where((project) => project['name']!
                                            .toLowerCase()
                                            .contains(value.toLowerCase()))
                                        .toList();
                                  });
                                },
                              ),
                            ),
                            const Spacer(),
                            const Expanded(flex: 5, child: MyDropDownMenu()),
                          ],
                        ),
                  ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        _expansionChange = value;
                      });
                    },
                    title: const Text(
                      projectlist,
                      style: TextStyle(color: white),
                    ),
                    trailing: const Icon(
                      Icons.filter_list_rounded,
                      color: white,
                    ),
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 15,
                            child: TextField(
                              decoration: InputDecoration(
                                constraints:
                                    const BoxConstraints(maxHeight: 50),
                                hintText: search,
                                hintStyle: const TextStyle(fontSize: twelve),
                                contentPadding: const EdgeInsets.only(top: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: const Icon(Icons.search,
                                    color: Colors.grey),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  filteredProjects = projects
                                      .where((project) => project['name']!
                                          .toLowerCase()
                                          .contains(value.toLowerCase()))
                                      .toList();
                                });
                              },
                            ),
                          ),
                          const Spacer(),
                          const Expanded(
                            flex: 5,
                            child: MyDropDownMenu(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.height * zeroPointZeroOne,
                      ),

                      const CalenderContainers(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(status,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                          FilterContainer(
                              onSelected: (value) {
                                _applyFilter(completed);
                              },
                              color: green,
                              text: completed),
                          FilterContainer(
                              onSelected: (value) {
                                _applyFilter(delayed);
                              },
                              color: orange,
                              text: delayed),
                          FilterContainer(
                              onSelected: (value) {
                                _applyFilter(onGoing);
                              },
                              color: blue,
                              text: onGoing)
                        ],
                      ),
                      SizedBox(
                          height: ScreenSize.height * zeroPointZeroTwoZero),

                      // Apply Filter Button
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            filteredProjects = projects;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(370, 40),
                          backgroundColor: white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(resetFilters,
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenSize.height * zeroPointZeroTwoFive,
                  ),
                  const Row(
                    children: [
                      Spacer(),
                      Expanded(
                          flex: 25,
                          child: NameWidget(
                            text: researchName,
                            color: white,
                          )),
                      Spacer(
                        flex: 3,
                      ),
                      Expanded(
                          flex: 12,
                          child: NameWidget(
                            color: white,
                            text: status,
                          )),
                    ],
                  ),
                  FilteredList(
                    filteredProjects: filteredProjects,
                  ),
                ],
              ),
            ),
          )),
        )
      ],
    );
  }

  void _applyFilter(String status) {
    setState(() {
      filteredProjects =
          projects.where((project) => project['status'] == status).toList();
    });
  }
}

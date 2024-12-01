import 'package:flutter/material.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/constants.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/filter_container.dart';
import 'package:hiring_task/screen_constants.dart';

import 'package:hiring_task/screen_size.dart';

class TasksQuickView extends StatelessWidget {
  const TasksQuickView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tasks = List.generate(
      5,
      (index) => {
        'teamName': 'Design Team',
        'creator': {'name': 'Mohsin Far...', 'image': moshin},
        'assignees': [
          {'name': 'Assignee 1', 'image': firstPerson},
          {'name': 'Assignee 2', 'image': secondPerson},
        ],
      },
    );
    return ExpansionTile(
      collapsedBackgroundColor: lightGreyshade200,
      shape: Border.all(color: Colors.transparent),
      backgroundColor: lightGreyshade200,
      collapsedShape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(twelve)),
      ),
      title: const Padding(
        padding: EdgeInsets.only(left: 100),
        child: Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
      iconColor: Colors.black,
      leading: const Text(taskQuickView, style: TextStyle(fontSize: 16)),
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(
              flex: 3,
            ),
            Expanded(
                flex: 19,
                child: NameWidget(
                  text: teamName,
                  color: darkestGrey,
                )),
            Expanded(
                flex: 13,
                child: NameWidget(
                  text: creator,
                  color: darkestGrey,
                )),
            Expanded(
                flex: 19,
                child: NameWidget(
                  text: assignedTo,
                  color: darkestGrey,
                )),
          ],
        ),
        Container(
          color: white,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Text(
                            task['teamName'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage(task['creator']['image']),
                            ),
                            Text(task['creator']['name']),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: ScreenSize.height * zeroPointZeroEight,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              for (int i = 0; i < task['assignees'].length; i++)
                                Positioned(
                                  left: i * 18.0,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                        task['assignees'][i]['image']),
                                  ),
                                ),
                              if (task['assignees'].length >= 2)
                                const Positioned(
                                  left: 2 * 16.0,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: darkGrey,
                                    child: Text('+1',
                                        style: TextStyle(color: white)),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: lightGreyshade400,
                    indent: ScreenSize.width * zeroPointZeroTwoFive,
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

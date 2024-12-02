import 'package:flutter/material.dart';
import 'package:hiring_task/constants.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/task_item.dart';

class ListOfTaskItem extends StatelessWidget {
  const ListOfTaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);
    return ListView.builder(
      itemCount: taskItems.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SizedBox(
          height: ScreenSize.height * zeroPointTwo,
          width: ScreenSize.width * zeroPointThree,
          child: Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 20,
                child: TaskItem(
                  image: taskItems[index][0],
                  text: taskItems[index][1],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

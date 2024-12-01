import 'package:flutter/material.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/constants.dart';
import 'package:hiring_task/screen_constants.dart';

class FilteredList extends StatelessWidget {
  const FilteredList({super.key, required this.filteredProjects});
  final List filteredProjects;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: filteredProjects.length,
        itemBuilder: (context, index) {
          final project = filteredProjects[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 11,
                      child: Text(project['name']!,
                          style: const TextStyle(fontSize: 13)),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: _getStatusColor(project['status'] ?? ''),
                        ),
                        child: Center(
                          child: Text(
                            project['status']!,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Divider(
                color: lightGreyshade200,
                indent: sixteen,
                endIndent: sixteen,
              ),
            ],
          );
        },
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'On Going':
        return Colors.blue;
      case 'Delayed':
        return Colors.orange;
      case 'Completed':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}

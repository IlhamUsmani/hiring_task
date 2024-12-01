import 'package:flutter/material.dart';
import 'package:hiring_task/feature/screens/home_screen/view/widgets/constants.dart';
import 'package:hiring_task/screen_constants.dart';
import 'package:hiring_task/screen_size.dart';

class CalenderContainers extends StatefulWidget {
  const CalenderContainers({super.key});

  @override
  State<CalenderContainers> createState() => _CalenderContainersState();
}

class _CalenderContainersState extends State<CalenderContainers> {
  late final TextEditingController _startDateController;

  late final TextEditingController _endDateController;
  @override
  void initState() {
    super.initState();
    _startDateController = TextEditingController();
    _endDateController = TextEditingController();
  }

  @override
  void dispose() {
    _startDateController.dispose();
    _endDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: ScreenSize.width * zeroPointNine,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: white,
        ),
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Deadline:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Spacer(
                  flex: 3,
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Until:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 7,
                  child: TextField(
                    controller: _startDateController,
                    decoration: InputDecoration(
                      hintText: 'Starting Date',
                      hintStyle: const TextStyle(fontSize: 12),
                      suffixIcon: const Icon(Icons.calendar_today),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 7,
                  child: TextField(
                    controller: _endDateController,
                    decoration: InputDecoration(
                      hintText: 'Ending Date',
                      hintStyle: const TextStyle(fontSize: 12),
                      suffixIcon: const Icon(Icons.calendar_today),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: ScreenSize.height * zeroPointZeroTwoZero),
    ]);
  }
}

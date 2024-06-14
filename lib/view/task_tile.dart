import 'package:flutter/material.dart';
import 'package:todo_app/common/model/task.dart';

class TaskTail extends StatelessWidget {
  final Task task;
  final void Function() onChangedCheckBox;

  const TaskTail(
      {super.key, required this.task, required this.onChangedCheckBox});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(
                    (states) => Color.fromARGB(255, 244, 101, 149)),
                value: task.isFinished,
                onChanged: (_) {
                  onChangedCheckBox();
                }),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  task.title,
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Text(
                  task.date,
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
        const Divider(color: Colors.white)
      ],
    );
  }
}

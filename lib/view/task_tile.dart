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
                side: const BorderSide(
                    width: 1, color: Color.fromARGB(255, 185, 185, 185)),
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(
                    (states) => const Color.fromARGB(255, 46, 119, 175)),
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
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  task.date,
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 185, 185, 185)),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
        const Divider(color: Color.fromARGB(255, 47, 57, 68))
      ],
    );
  }
}

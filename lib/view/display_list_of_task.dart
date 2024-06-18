import 'package:flutter/material.dart';
import 'package:todo_app/common/model/task.dart';
import 'package:todo_app/view/task_tile.dart';

class DisplayListOfTask extends StatelessWidget {
  final List<Task> tasks;
  final void Function(String uuid) onChangedCheckBox;
  final Function(int index) moveEditTaskPage;

//コンストラクタでtaskの配列を受け取る
  const DisplayListOfTask(
      {super.key,
      required this.tasks,
      required this.onChangedCheckBox,
      required this.moveEditTaskPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 47, 57, 68),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(10, 10),
          ),
        ],
        border: Border.all(color: const Color.fromARGB(255, 47, 57, 68)),
        color: const Color.fromARGB(255, 46, 119, 175),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  moveEditTaskPage(index);
                },
                child: TaskTail(
                  task: tasks[index],
                  onChangedCheckBox: () {
                    onChangedCheckBox(tasks[index].uuid);
                  },
                ));
          })),
    );
  }
}

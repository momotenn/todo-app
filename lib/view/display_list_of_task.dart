import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/common/model/task.dart';
import 'package:todo_app/view/task_tile.dart';

class DisplayListOfTask extends StatelessWidget {
  final List<Task> tasks;
  final void Function(String uuid) onChangedCheckBox;
  final Function moveEditTaskPage;

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
        color: Color.fromARGB(255, 164, 148, 215),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
                onTap: () {
                  //タップした時の処理(クロージャ)
                  moveEditTaskPage();
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

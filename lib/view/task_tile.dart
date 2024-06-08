import 'package:flutter/material.dart';
import 'package:todo_app/common/model/task.dart';

class TaskTail extends StatelessWidget {
  final Task task;
  final void Function() onChangedCheckBox;

  const TaskTail(
      {super.key, required this.task, required this.onChangedCheckBox});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(task.title),
      subtitle: Text(task.date),
      controlAffinity: ListTileControlAffinity.leading,
      //チェックボックスの状態
      value: task.isFinished,
      //チェックボックスの状態が変更された際に呼び出されるコールバック関数
      onChanged: (_) {
        onChangedCheckBox();
      },
      activeColor: Colors.blue,
      checkColor: Colors.white,
    );
  }
}

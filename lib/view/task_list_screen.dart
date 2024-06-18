import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/view/add_task_screen.dart';
import 'package:todo_app/view/display_list_of_task.dart';
import 'package:todo_app/view/edit_task_screen.dart';
import 'package:todo_app/view_model/tasks_view_model.dart';
import 'package:gap/gap.dart';

class TaskListScreen extends HookConsumerWidget {
  const TaskListScreen({super.key});
  //最初にタスク一覧を呼びたい

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        final _ =
            ref.read(tasksViewModelProvider.notifier).didOpenedTasksList();
      });
    });

    final state = ref.watch(tasksViewModelProvider);

    final finishedList = state.tasks.where((e) => e.isFinished).toList();

    final unFinishedList = state.tasks.where((e) => !e.isFinished).toList();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 53, 80, 126),
      appBar: AppBar(
        title: const Text(
          'タスク一覧',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 46, 119, 175),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 10, bottom: 70, left: 10),
        child: Column(
          children: [
            const Gap(25),
            const Text(
              '未完了',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 244, 119, 111),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(25),
            Expanded(
              child: DisplayListOfTask(
                  tasks: unFinishedList,
                  onChangedCheckBox:
                      ref.read(tasksViewModelProvider.notifier).didCheckedBoxes,
                  moveEditTaskPage: (index) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return EditTaskScreen(task: unFinishedList[index]);
                    }));
                  }),
            ),
            const Gap(25),
            const Text(
              '完了',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 46, 119, 175),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(25),
            Expanded(
              child: DisplayListOfTask(
                  tasks: finishedList,
                  onChangedCheckBox:
                      ref.read(tasksViewModelProvider.notifier).didCheckedBoxes,
                  moveEditTaskPage: (_) {}),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const AddTaskScreen();
            }),
          );
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, color: Color.fromARGB(255, 46, 119, 175)),
      ),
    );
  }
}

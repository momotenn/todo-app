import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/view/display_list_of_task.dart';
import 'package:todo_app/view_model/tasks_view_model.dart';
import 'package:gap/gap.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});
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
      appBar: AppBar(
        title: const Text('タスク一覧'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Gap(30),
            const Text('未完了'),
            const Gap(30),
            Expanded(
              child: DisplayListOfTask(
                  tasks: unFinishedList,
                  onChangedCheckBox:
                      ref.read(tasksViewModelProvider.notifier).didCheckedBoxes,
                  moveEditTaskPage: () {}),
            ),
            const Gap(30),
            const Text('完了'),
            const Gap(30),
            Expanded(
              child: DisplayListOfTask(
                  tasks: finishedList,
                  onChangedCheckBox:
                      ref.read(tasksViewModelProvider.notifier).didCheckedBoxes,
                  moveEditTaskPage: () {}),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => (_)),
          //   );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

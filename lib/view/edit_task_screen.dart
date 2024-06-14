import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/common/model/task.dart';
import 'package:todo_app/view/task_list_screen.dart';

import 'package:todo_app/view_model/edit_task_view_model.dart';

class EditTaskScreen extends HookConsumerWidget {
  final Task task;

  const EditTaskScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleTextEditingController =
        useTextEditingController(text: task.title);
    final dateTimeTextEditingController =
        useTextEditingController(text: task.date);
    final descriptionTextEditingController =
        useTextEditingController(text: task.description);

    final editTaskViewModel = ref.watch(editTaskViewModelProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('タスク編集'),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context1) {
                        return AlertDialog(
                          title: Text('選択してください'),
                          content: Text('このタスクを削除しますか？'),
                          actions: [
                            TextButton(
                              child: Text('はい'),
                              onPressed: () {
                                ref
                                    .read(editTaskViewModelProvider.notifier)
                                    .didTappedRemoveTaskButton(task.uuid);
                                //'pop'で前のボタンまで戻る
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                              },
                            ),
                            TextButton(
                              child: Text('いいえ'),
                              onPressed: () {
                                //'pop'で前のボタンまで戻る
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      });
                },
                icon: const Icon(Icons.delete))
          ],
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (value) {
                ref.read(editTaskViewModelProvider.notifier).didInputTaskInfo(
                    titleTextEditingController.text,
                    dateTimeTextEditingController.text,
                    descriptionTextEditingController.text);
              },
              controller: titleTextEditingController,
              decoration: const InputDecoration(
                hintText: "タスクタイトル",
                prefixIcon: Icon(Icons.mode_edit),
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              onChanged: (value) {
                ref.read(editTaskViewModelProvider.notifier).didInputTaskInfo(
                    titleTextEditingController.text,
                    dateTimeTextEditingController.text,
                    descriptionTextEditingController.text);
              },
              controller: dateTimeTextEditingController,
              textAlign: TextAlign.center,
              decoration:
                  const InputDecoration(prefixIcon: Icon(Icons.calendar_month)),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                DatePicker.showDateTimePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(2024, 1, 1),
                    maxTime: DateTime(2030, 12, 31), onConfirm: (date) {
                  var dtFormat = DateFormat('yyyy-MM-dd HH:mm', "ja_JP");
                  String strDate = dtFormat.format(date);
                  dateTimeTextEditingController.text = strDate;
                  ref.read(editTaskViewModelProvider.notifier).didInputTaskInfo(
                      titleTextEditingController.text,
                      dateTimeTextEditingController.text,
                      descriptionTextEditingController.text);
                },
                    currentTime: dateTimeTextEditingController.text.isNotEmpty
                        ? DateTime.parse(dateTimeTextEditingController.text)
                        : DateTime.now(),
                    locale: LocaleType.jp);
              },
            ),
            TextField(
              onChanged: (value) {
                ref.read(editTaskViewModelProvider.notifier).didInputTaskInfo(
                    titleTextEditingController.text,
                    dateTimeTextEditingController.text,
                    descriptionTextEditingController.text);
              },
              controller: descriptionTextEditingController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  hintText: "詳しい内容", prefixIcon: Icon(Icons.edit_note)),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 200,
                height: 70,
                child: ElevatedButton(
                  //ボタンを押した時の処理
                  onPressed: editTaskViewModel.isEditTaskButtonEnabled
                      ? () {
                          ref
                              .read(editTaskViewModelProvider.notifier)
                              .didTappedEditTaskButton(
                                  task.uuid,
                                  titleTextEditingController.text,
                                  dateTimeTextEditingController.text,
                                  descriptionTextEditingController.text,
                                  task.isFinished);
                          //'pop'で前のボタンまで戻る
                          Navigator.of(context).pop();
                        }
                      : null,
                  child: const Text('更新する'),
                ),
              ),
            ),
          ],
        ));
  }
}

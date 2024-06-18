import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/view_model/add_task_view_model.dart';

class AddTaskScreen extends HookConsumerWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleTextEditingController = useTextEditingController();
    final dateTimeTextEditingController = useTextEditingController();
    final descriptionTextEditingController = useTextEditingController();

    final addTaskViewModel = ref.watch(addTaskViewModelProvider);

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 53, 80, 126),
        appBar: AppBar(
          title: const Text(
            'タスク作成',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 46, 119, 175),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Column(
          children: [
            TextField(
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              onChanged: (value) {
                ref.read(addTaskViewModelProvider.notifier).didInputTaskInfo(
                      titleTextEditingController.text,
                      dateTimeTextEditingController.text,
                    );
              },
              controller: titleTextEditingController,
              decoration: const InputDecoration(
                hintText: "タスクタイトル",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.mode_edit, color: Colors.white),
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              onChanged: (value) {
                ref.read(addTaskViewModelProvider.notifier).didInputTaskInfo(
                    titleTextEditingController.text,
                    dateTimeTextEditingController.text);
              },
              controller: dateTimeTextEditingController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.calendar_month, color: Colors.white)),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                DatePicker.showDateTimePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(2024, 1, 1),
                    maxTime: DateTime(2030, 12, 31), onConfirm: (date) {
                  var dtFormat = DateFormat('yyyy-MM-dd HH:mm', "ja_JP");
                  String strDate = dtFormat.format(date);
                  dateTimeTextEditingController.text = strDate;
                  ref.read(addTaskViewModelProvider.notifier).didInputTaskInfo(
                      titleTextEditingController.text,
                      dateTimeTextEditingController.text);
                },
                    currentTime: dateTimeTextEditingController.text.isNotEmpty
                        ? DateTime.parse(dateTimeTextEditingController.text)
                        : DateTime.now(),
                    locale: LocaleType.jp);
              },
            ),
            TextField(
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              controller: descriptionTextEditingController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  hintText: "詳しい内容",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.edit_note, color: Colors.white)),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 200,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 22),
                    backgroundColor: Colors.white, // background
                    foregroundColor:
                        const Color.fromARGB(255, 46, 119, 175), // foreground
                  ),
                  //ボタンを押した時の処理
                  onPressed: addTaskViewModel.isAddTaskButtonEnabled
                      ? () {
                          ref
                              .read(addTaskViewModelProvider.notifier)
                              .didTappedAddTaskButton(
                                  titleTextEditingController.text,
                                  dateTimeTextEditingController.text,
                                  descriptionTextEditingController.text);
                          //'pop'で前のボタンまで戻る
                          Navigator.of(context).pop();
                        }
                      : null,
                  child: const Text('追加する'),
                ),
              ),
            ),
          ],
        ));
  }
}

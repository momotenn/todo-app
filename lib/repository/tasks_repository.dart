import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/common/model/task.dart';
import 'package:todo_app/repository/tasks_repository_interface.dart';

class TasksRepository implements TasksRepositoryInterface {
  @override
  //リスト一覧に載せるリスト一覧を取得
  Future<List<Task>> getTasksList() async {
    //sharedpreferencesからタスクの配列（JSON）を取得
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final json = prefs.getString('Task');
    if (json != null) {
      //json => dartへデコードする
      final List<dynamic> decodedJson = jsonDecode(json);

      final taskList = decodedJson.map((e) => Task.fromJson(e)).toList();
//デコードした配列を返す
      return taskList;
    } else {
      return [];
    }
  }

  @override
  Future<List<Task>> updateTasksList(Task task) async {
//デコードした配列を取得
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final json = prefs.getString('Task');

    final List<dynamic> decodedJson = jsonDecode(json!);

    final taskList = decodedJson.map((e) => Task.fromJson(e)).toList();

    //updateした配列に置き換える

    final updatedList = taskList.map((e) {
      if (e.uuid == task.uuid) {
        return task;
      } else {
        return e;
      }
    }).toList();
    print(updatedList);

//エンコード（dart => json）で配列全てをsharedpreferencesへ更新する

    final jsonString = jsonEncode(updatedList).toString();
    await prefs.setString('Task', jsonString);

//更新結果(updateした配列)を返す
    return updatedList;
  }

  @override
  //追加ページに入力したデータを更新
  Future<List<Task>> addTask(Task task) async {
//デコードした配列を取得
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final json = prefs.getString('Task');

    final List<dynamic> decodedJson = jsonDecode(json!);

    final taskList = decodedJson.map((e) => Task.fromJson(e)).toList();

    taskList.add(task);

//エンコード（dart => json）で配列全てをsharedpreferencesへ更新する

    final jsonString = jsonEncode(taskList).toString();
    await prefs.setString('Task', jsonString);

//更新結果(updateした配列)を返す
    return taskList;
  }

  //削除したデータを更新
  @override
  Future<List<Task>> removeTask(String uuid) async {
//デコードした配列を取得
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final json = prefs.getString('Task');

    final List<dynamic> decodedJson = jsonDecode(json!);

    final taskList = decodedJson.map((e) => Task.fromJson(e)).toList();

    final task = taskList.firstWhere((element) => element.uuid == uuid);

    taskList.remove(task);

//エンコード（dart => json）で配列全てをsharedpreferencesへ更新する

    final jsonString = jsonEncode(taskList).toString();
    await prefs.setString('Task', jsonString);

//更新結果(updateした配列)を返す
    return taskList;
  }
}

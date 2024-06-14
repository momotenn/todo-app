//リスト一覧を取得するよう、repositoryに依頼

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/common/model/task.dart';
import 'package:todo_app/repository/tasks_repository.dart';
import 'package:todo_app/repository/tasks_repository_interface.dart';
import 'package:todo_app/view_model/tasks_view_model_state.dart';

part 'tasks_view_model.g.dart';

final tasksRepositoryProvider = Provider((ref) => TasksRepository());

@riverpod
class TasksViewModel extends _$TasksViewModel {
  TasksRepositoryInterface? repository;

  @override
  TasksViewModelState build() {
    repository = ref.read(tasksRepositoryProvider);
    return const TasksViewModelState(
        tasksStatus: TasksStatus.initial, tasks: []);
  }

  //loading => UIでぐるぐる表示
  //success => リスト一覧を表示
  //failure => エラー表示
  void didOpenedTasksList() async {
    state = state.copyWith(tasksStatus: TasksStatus.loading);
    repository?.getTasksList().then((model) {
      model.sort((a, b) => a.date.compareTo(b.date));
      state = state.copyWith(tasksStatus: TasksStatus.success, tasks: model);
    }, onError: (err) {
      state = state.copyWith(tasksStatus: TasksStatus.failure);
    });
  }

  //loading => UIでぐるぐる表示

  void didCheckedBoxes(String uuid) async {
    final task = state.tasks.firstWhere((element) => element.uuid == uuid);
    final updatedTask = Task(
        uuid: task.uuid,
        title: task.title,
        date: task.date,
        description: task.description,
        isFinished: !task.isFinished);
    repository?.updateTasksList(updatedTask).then((updatedList) {
      state = state.copyWith(tasks: updatedList);
    });
  }
}

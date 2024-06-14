import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/common/model/task.dart';
import 'package:todo_app/repository/tasks_repository.dart';
import 'package:todo_app/repository/tasks_repository_interface.dart';
import 'package:todo_app/view_model/add_task_view_model_state.dart';
import 'package:uuid/uuid.dart';

part 'add_task_view_model.g.dart';

final tasksRepositoryProvider = Provider((ref) => TasksRepository());

@riverpod
class AddTaskViewModel extends _$AddTaskViewModel {
  TasksRepositoryInterface? repository;

  @override
  AddTaskViewModelState build() {
    repository = ref.read(tasksRepositoryProvider);

    return const AddTaskViewModelState(
        //タスクの配列の状態、追加前のタスク一覧の配列を入れる？
        addTaskStatus: AddTaskStatus.initial,
        isAddTaskButtonEnabled: false);
  }

  void didTappedAddTaskButton(
      String title, String date, String? description) async {
    state = state.copyWith(addTaskStatus: AddTaskStatus.loading);

    final addedTask = Task(
        uuid: Uuid().v8(),
        title: title,
        date: date,
        description: description,
        isFinished: false);
    repository?.addTask(addedTask).then((_) {
      state = state.copyWith(addTaskStatus: AddTaskStatus.success);
    }, onError: (err) {
      state = state.copyWith(addTaskStatus: AddTaskStatus.failure);
    });
  }

  void didInputTaskInfo(String title, String date) {
    final isEnabled = title.isNotEmpty && date != "";

    state = state.copyWith(isAddTaskButtonEnabled: isEnabled);
  }
}

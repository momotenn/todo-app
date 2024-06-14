import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/common/model/task.dart';
import 'package:todo_app/repository/tasks_repository.dart';
import 'package:todo_app/repository/tasks_repository_interface.dart';
import 'package:todo_app/view_model/edit_task_view_model_state.dart';

part 'edit_task_view_model.g.dart';

final tasksRepositoryProvider = Provider((ref) => TasksRepository());

@riverpod
class EditTaskViewModel extends _$EditTaskViewModel {
  TasksRepositoryInterface? repository;

  @override
  EditTaskViewModelState build() {
    repository = ref.read(tasksRepositoryProvider);

    return const EditTaskViewModelState(
        editTaskStatus: EditTaskStatus.initial,
        removeTaskStatus: RemoveTaskStatus.initial,
        isEditTaskButtonEnabled: false);
  }

  void didTappedEditTaskButton(String uuid, String title, String date,
      String description, bool isFinished) async {
    state = state.copyWith(editTaskStatus: EditTaskStatus.loading);
    //uuidが一致
    final editedTask = Task(
        uuid: uuid,
        title: title,
        date: date,
        description: description,
        isFinished: isFinished);
    repository?.updateTasksList(editedTask).then((_) {
      state = state.copyWith(editTaskStatus: EditTaskStatus.success);
    }, onError: (err) {
      state = state.copyWith(editTaskStatus: EditTaskStatus.failure);
    });
  }

  void didTappedRemoveTaskButton(String uuid) async {
    state = state.copyWith(removeTaskStatus: RemoveTaskStatus.loading);

    repository?.removeTask(uuid).then((_) {
      state = state.copyWith(removeTaskStatus: RemoveTaskStatus.success);
    }, onError: (err) {
      state = state.copyWith(removeTaskStatus: RemoveTaskStatus.failure);
    });
  }

  void didInputTaskInfo(String title, String date, String description) {
    final isEnabled = title.isNotEmpty && date != "";

    state = state.copyWith(isEditTaskButtonEnabled: isEnabled);
  }
}

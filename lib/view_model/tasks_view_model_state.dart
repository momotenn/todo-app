import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/common/model/task.dart';
part 'tasks_view_model_state.freezed.dart';

enum TasksStatus { initial, loading, failure, success }

@freezed
class TasksViewModelState with _$TasksViewModelState {
  const factory TasksViewModelState(
      {required TasksStatus tasksStatus,
      required List<Task> tasks}) = _TasksViewModelState;
}

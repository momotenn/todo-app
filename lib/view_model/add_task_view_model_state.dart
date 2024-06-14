import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_view_model_state.freezed.dart';

enum AddTaskStatus { initial, loading, failure, success }

@freezed
class AddTaskViewModelState with _$AddTaskViewModelState {
  const factory AddTaskViewModelState(
      {required AddTaskStatus addTaskStatus,
      required bool isAddTaskButtonEnabled}) = _AddTaskViewModelState;
}

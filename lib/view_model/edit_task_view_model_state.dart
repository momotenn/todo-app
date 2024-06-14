import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_task_view_model_state.freezed.dart';

enum EditTaskStatus { initial, loading, failure, success }

enum RemoveTaskStatus { initial, loading, failure, success }

@freezed
class EditTaskViewModelState with _$EditTaskViewModelState {
  const factory EditTaskViewModelState(
      {required EditTaskStatus editTaskStatus,
      required RemoveTaskStatus removeTaskStatus,
      required bool isEditTaskButtonEnabled}) = _EditTaskViewModelState;
}

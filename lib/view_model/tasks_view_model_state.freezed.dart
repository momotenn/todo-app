// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksViewModelState {
  TasksStatus get tasksStatus => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksViewModelStateCopyWith<TasksViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksViewModelStateCopyWith<$Res> {
  factory $TasksViewModelStateCopyWith(
          TasksViewModelState value, $Res Function(TasksViewModelState) then) =
      _$TasksViewModelStateCopyWithImpl<$Res, TasksViewModelState>;
  @useResult
  $Res call({TasksStatus tasksStatus, List<Task> tasks});
}

/// @nodoc
class _$TasksViewModelStateCopyWithImpl<$Res, $Val extends TasksViewModelState>
    implements $TasksViewModelStateCopyWith<$Res> {
  _$TasksViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksStatus = null,
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      tasksStatus: null == tasksStatus
          ? _value.tasksStatus
          : tasksStatus // ignore: cast_nullable_to_non_nullable
              as TasksStatus,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksViewModelStateImplCopyWith<$Res>
    implements $TasksViewModelStateCopyWith<$Res> {
  factory _$$TasksViewModelStateImplCopyWith(_$TasksViewModelStateImpl value,
          $Res Function(_$TasksViewModelStateImpl) then) =
      __$$TasksViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TasksStatus tasksStatus, List<Task> tasks});
}

/// @nodoc
class __$$TasksViewModelStateImplCopyWithImpl<$Res>
    extends _$TasksViewModelStateCopyWithImpl<$Res, _$TasksViewModelStateImpl>
    implements _$$TasksViewModelStateImplCopyWith<$Res> {
  __$$TasksViewModelStateImplCopyWithImpl(_$TasksViewModelStateImpl _value,
      $Res Function(_$TasksViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksStatus = null,
    Object? tasks = null,
  }) {
    return _then(_$TasksViewModelStateImpl(
      tasksStatus: null == tasksStatus
          ? _value.tasksStatus
          : tasksStatus // ignore: cast_nullable_to_non_nullable
              as TasksStatus,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$TasksViewModelStateImpl implements _TasksViewModelState {
  const _$TasksViewModelStateImpl(
      {required this.tasksStatus, required final List<Task> tasks})
      : _tasks = tasks;

  @override
  final TasksStatus tasksStatus;
  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksViewModelState(tasksStatus: $tasksStatus, tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksViewModelStateImpl &&
            (identical(other.tasksStatus, tasksStatus) ||
                other.tasksStatus == tasksStatus) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tasksStatus, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksViewModelStateImplCopyWith<_$TasksViewModelStateImpl> get copyWith =>
      __$$TasksViewModelStateImplCopyWithImpl<_$TasksViewModelStateImpl>(
          this, _$identity);
}

abstract class _TasksViewModelState implements TasksViewModelState {
  const factory _TasksViewModelState(
      {required final TasksStatus tasksStatus,
      required final List<Task> tasks}) = _$TasksViewModelStateImpl;

  @override
  TasksStatus get tasksStatus;
  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$TasksViewModelStateImplCopyWith<_$TasksViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

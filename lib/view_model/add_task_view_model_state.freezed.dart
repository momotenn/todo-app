// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTaskViewModelState {
  AddTaskStatus get addTaskStatus => throw _privateConstructorUsedError;
  bool get isAddTaskButtonEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskViewModelStateCopyWith<AddTaskViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskViewModelStateCopyWith<$Res> {
  factory $AddTaskViewModelStateCopyWith(AddTaskViewModelState value,
          $Res Function(AddTaskViewModelState) then) =
      _$AddTaskViewModelStateCopyWithImpl<$Res, AddTaskViewModelState>;
  @useResult
  $Res call({AddTaskStatus addTaskStatus, bool isAddTaskButtonEnabled});
}

/// @nodoc
class _$AddTaskViewModelStateCopyWithImpl<$Res,
        $Val extends AddTaskViewModelState>
    implements $AddTaskViewModelStateCopyWith<$Res> {
  _$AddTaskViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addTaskStatus = null,
    Object? isAddTaskButtonEnabled = null,
  }) {
    return _then(_value.copyWith(
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as AddTaskStatus,
      isAddTaskButtonEnabled: null == isAddTaskButtonEnabled
          ? _value.isAddTaskButtonEnabled
          : isAddTaskButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTaskViewModelStateImplCopyWith<$Res>
    implements $AddTaskViewModelStateCopyWith<$Res> {
  factory _$$AddTaskViewModelStateImplCopyWith(
          _$AddTaskViewModelStateImpl value,
          $Res Function(_$AddTaskViewModelStateImpl) then) =
      __$$AddTaskViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddTaskStatus addTaskStatus, bool isAddTaskButtonEnabled});
}

/// @nodoc
class __$$AddTaskViewModelStateImplCopyWithImpl<$Res>
    extends _$AddTaskViewModelStateCopyWithImpl<$Res,
        _$AddTaskViewModelStateImpl>
    implements _$$AddTaskViewModelStateImplCopyWith<$Res> {
  __$$AddTaskViewModelStateImplCopyWithImpl(_$AddTaskViewModelStateImpl _value,
      $Res Function(_$AddTaskViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addTaskStatus = null,
    Object? isAddTaskButtonEnabled = null,
  }) {
    return _then(_$AddTaskViewModelStateImpl(
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as AddTaskStatus,
      isAddTaskButtonEnabled: null == isAddTaskButtonEnabled
          ? _value.isAddTaskButtonEnabled
          : isAddTaskButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddTaskViewModelStateImpl implements _AddTaskViewModelState {
  const _$AddTaskViewModelStateImpl(
      {required this.addTaskStatus, required this.isAddTaskButtonEnabled});

  @override
  final AddTaskStatus addTaskStatus;
  @override
  final bool isAddTaskButtonEnabled;

  @override
  String toString() {
    return 'AddTaskViewModelState(addTaskStatus: $addTaskStatus, isAddTaskButtonEnabled: $isAddTaskButtonEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskViewModelStateImpl &&
            (identical(other.addTaskStatus, addTaskStatus) ||
                other.addTaskStatus == addTaskStatus) &&
            (identical(other.isAddTaskButtonEnabled, isAddTaskButtonEnabled) ||
                other.isAddTaskButtonEnabled == isAddTaskButtonEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, addTaskStatus, isAddTaskButtonEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskViewModelStateImplCopyWith<_$AddTaskViewModelStateImpl>
      get copyWith => __$$AddTaskViewModelStateImplCopyWithImpl<
          _$AddTaskViewModelStateImpl>(this, _$identity);
}

abstract class _AddTaskViewModelState implements AddTaskViewModelState {
  const factory _AddTaskViewModelState(
          {required final AddTaskStatus addTaskStatus,
          required final bool isAddTaskButtonEnabled}) =
      _$AddTaskViewModelStateImpl;

  @override
  AddTaskStatus get addTaskStatus;
  @override
  bool get isAddTaskButtonEnabled;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskViewModelStateImplCopyWith<_$AddTaskViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

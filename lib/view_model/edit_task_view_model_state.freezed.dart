// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_task_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditTaskViewModelState {
  EditTaskStatus get editTaskStatus => throw _privateConstructorUsedError;
  RemoveTaskStatus get removeTaskStatus => throw _privateConstructorUsedError;
  bool get isEditTaskButtonEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTaskViewModelStateCopyWith<EditTaskViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskViewModelStateCopyWith<$Res> {
  factory $EditTaskViewModelStateCopyWith(EditTaskViewModelState value,
          $Res Function(EditTaskViewModelState) then) =
      _$EditTaskViewModelStateCopyWithImpl<$Res, EditTaskViewModelState>;
  @useResult
  $Res call(
      {EditTaskStatus editTaskStatus,
      RemoveTaskStatus removeTaskStatus,
      bool isEditTaskButtonEnabled});
}

/// @nodoc
class _$EditTaskViewModelStateCopyWithImpl<$Res,
        $Val extends EditTaskViewModelState>
    implements $EditTaskViewModelStateCopyWith<$Res> {
  _$EditTaskViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editTaskStatus = null,
    Object? removeTaskStatus = null,
    Object? isEditTaskButtonEnabled = null,
  }) {
    return _then(_value.copyWith(
      editTaskStatus: null == editTaskStatus
          ? _value.editTaskStatus
          : editTaskStatus // ignore: cast_nullable_to_non_nullable
              as EditTaskStatus,
      removeTaskStatus: null == removeTaskStatus
          ? _value.removeTaskStatus
          : removeTaskStatus // ignore: cast_nullable_to_non_nullable
              as RemoveTaskStatus,
      isEditTaskButtonEnabled: null == isEditTaskButtonEnabled
          ? _value.isEditTaskButtonEnabled
          : isEditTaskButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditTaskViewModelStateImplCopyWith<$Res>
    implements $EditTaskViewModelStateCopyWith<$Res> {
  factory _$$EditTaskViewModelStateImplCopyWith(
          _$EditTaskViewModelStateImpl value,
          $Res Function(_$EditTaskViewModelStateImpl) then) =
      __$$EditTaskViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EditTaskStatus editTaskStatus,
      RemoveTaskStatus removeTaskStatus,
      bool isEditTaskButtonEnabled});
}

/// @nodoc
class __$$EditTaskViewModelStateImplCopyWithImpl<$Res>
    extends _$EditTaskViewModelStateCopyWithImpl<$Res,
        _$EditTaskViewModelStateImpl>
    implements _$$EditTaskViewModelStateImplCopyWith<$Res> {
  __$$EditTaskViewModelStateImplCopyWithImpl(
      _$EditTaskViewModelStateImpl _value,
      $Res Function(_$EditTaskViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editTaskStatus = null,
    Object? removeTaskStatus = null,
    Object? isEditTaskButtonEnabled = null,
  }) {
    return _then(_$EditTaskViewModelStateImpl(
      editTaskStatus: null == editTaskStatus
          ? _value.editTaskStatus
          : editTaskStatus // ignore: cast_nullable_to_non_nullable
              as EditTaskStatus,
      removeTaskStatus: null == removeTaskStatus
          ? _value.removeTaskStatus
          : removeTaskStatus // ignore: cast_nullable_to_non_nullable
              as RemoveTaskStatus,
      isEditTaskButtonEnabled: null == isEditTaskButtonEnabled
          ? _value.isEditTaskButtonEnabled
          : isEditTaskButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditTaskViewModelStateImpl implements _EditTaskViewModelState {
  const _$EditTaskViewModelStateImpl(
      {required this.editTaskStatus,
      required this.removeTaskStatus,
      required this.isEditTaskButtonEnabled});

  @override
  final EditTaskStatus editTaskStatus;
  @override
  final RemoveTaskStatus removeTaskStatus;
  @override
  final bool isEditTaskButtonEnabled;

  @override
  String toString() {
    return 'EditTaskViewModelState(editTaskStatus: $editTaskStatus, removeTaskStatus: $removeTaskStatus, isEditTaskButtonEnabled: $isEditTaskButtonEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskViewModelStateImpl &&
            (identical(other.editTaskStatus, editTaskStatus) ||
                other.editTaskStatus == editTaskStatus) &&
            (identical(other.removeTaskStatus, removeTaskStatus) ||
                other.removeTaskStatus == removeTaskStatus) &&
            (identical(
                    other.isEditTaskButtonEnabled, isEditTaskButtonEnabled) ||
                other.isEditTaskButtonEnabled == isEditTaskButtonEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, editTaskStatus, removeTaskStatus, isEditTaskButtonEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskViewModelStateImplCopyWith<_$EditTaskViewModelStateImpl>
      get copyWith => __$$EditTaskViewModelStateImplCopyWithImpl<
          _$EditTaskViewModelStateImpl>(this, _$identity);
}

abstract class _EditTaskViewModelState implements EditTaskViewModelState {
  const factory _EditTaskViewModelState(
          {required final EditTaskStatus editTaskStatus,
          required final RemoveTaskStatus removeTaskStatus,
          required final bool isEditTaskButtonEnabled}) =
      _$EditTaskViewModelStateImpl;

  @override
  EditTaskStatus get editTaskStatus;
  @override
  RemoveTaskStatus get removeTaskStatus;
  @override
  bool get isEditTaskButtonEnabled;
  @override
  @JsonKey(ignore: true)
  _$$EditTaskViewModelStateImplCopyWith<_$EditTaskViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      date: json['date'] as String,
      description: json['description'] as String?,
      isFinished: json['isFinished'] as bool,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'date': instance.date,
      'description': instance.description,
      'isFinished': instance.isFinished,
    };

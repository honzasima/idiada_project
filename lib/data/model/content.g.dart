// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      id: json['ID'] as String,
      success: json['Success'] as String,
      step: json['Step'] as String,
      increment: json['Increment'] as String,
      attempt: json['Attempt'] as String,
      contactIteration: json['Contact iteration'] as String,
      equilIteration: json['Equil iteration'] as String,
      totalIteration: json['Total iteration'] as String,
      totalTime: json['Total time'] as String,
      inOfTime: json['Inc. of time'] as String,
      blockText: json['block_text'] as String,
      infoItems: InfoItems.fromJson(json['info_items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'ID': instance.id,
      'Success': instance.success,
      'Step': instance.step,
      'Increment': instance.increment,
      'Attempt': instance.attempt,
      'Contact iteration': instance.contactIteration,
      'Equil iteration': instance.equilIteration,
      'Total iteration': instance.totalIteration,
      'Total time': instance.totalTime,
      'Inc. of time': instance.inOfTime,
      'block_text': instance.blockText,
      'info_items': instance.infoItems,
    };

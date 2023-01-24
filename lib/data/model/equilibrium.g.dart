// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equilibrium.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Equilibrium _$EquilibriumFromJson(Map<String, dynamic> json) => Equilibrium(
      iteration: json['Iteration'] as String?,
      count: json['Count'] as int?,
      entity: json['Entity'] as String?,
      baseType: json['Base type'] as String?,
      residualVariable: json['Residual variable'] as String?,
      residualValue: (json['Residual value'] as num?)?.toDouble(),
      referenceValue: json['Reference value'],
      relativeResidual: json['Relative residual'] as String?,
      dOF: json['DOF'] as String?,
    );

Map<String, dynamic> _$EquilibriumToJson(Equilibrium instance) =>
    <String, dynamic>{
      'Iteration': instance.iteration,
      'Count': instance.count,
      'Entity': instance.entity,
      'Base type': instance.baseType,
      'Residual variable': instance.residualVariable,
      'Residual value': instance.residualValue,
      'Reference value': instance.referenceValue,
      'Relative residual': instance.relativeResidual,
      'DOF': instance.dOF,
    };

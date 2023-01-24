import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'equilibrium.g.dart';

@JsonSerializable()
class Equilibrium {
  @JsonKey(name: "Iteration")
  final String? iteration;

  @JsonKey(name: "Count")
  final int? count;

  @JsonKey(name: "Entity")
  final String? entity;

  @JsonKey(name: "Base type")
  final String? baseType;

  @JsonKey(name: "Residual variable")
  final String? residualVariable;

  @JsonKey(name: "Residual value")
  final double? residualValue;

  @JsonKey(name: "Reference value")
  final dynamic referenceValue;

  @JsonKey(name: "Relative residual")
  final String? relativeResidual;

  @JsonKey(name: "DOF")
  final String? dOF;

  Equilibrium({
    this.iteration,
    this.count,
    this.entity,
    this.baseType,
    this.residualVariable,
    this.residualValue,
    this.referenceValue,
    this.relativeResidual,
    this.dOF,
  });

  factory Equilibrium.fromJsonString(String json) {
    return Equilibrium.fromJson(jsonDecode(json));
  }

  factory Equilibrium.fromJson(Map<String, dynamic> json) => _$EquilibriumFromJson(json);

  Map<String, dynamic> toJson() => _$EquilibriumToJson(this);
}

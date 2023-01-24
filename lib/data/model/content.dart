import 'dart:convert';

import 'package:idiada_project/data/model/info_items.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable()
class Content {
  @JsonKey(name: "ID")
  final String id;

  @JsonKey(name: "Success")
  final String success;

  @JsonKey(name: "Step")
  final String step;

  @JsonKey(name: "Increment")
  final String increment;

  @JsonKey(name: "Attempt")
  final String attempt;

  @JsonKey(name: "Contact iteration")
  final String contactIteration;

  @JsonKey(name: "Equil iteration")
  final String equilIteration;

  @JsonKey(name: "Total iteration")
  final String totalIteration;

  @JsonKey(name: "Total time")
  final String totalTime;

  @JsonKey(name: "Inc. of time")
  final String inOfTime;

  @JsonKey(name: "block_text")
  final String blockText;

  @JsonKey(name: "info_items")
  final InfoItems infoItems;

  Content({
    required this.id,
    required this.success,
    required this.step,
    required this.increment,
    required this.attempt,
    required this.contactIteration,
    required this.equilIteration,
    required this.totalIteration,
    required this.totalTime,
    required this.inOfTime,
    required this.blockText,
    required this.infoItems,
  });

  factory Content.fromJsonString(String json) {
    Map<String, String> data = Map.castFrom(jsonDecode(json));
    return Content.fromJson(data);
  }

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}

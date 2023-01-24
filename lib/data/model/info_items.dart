import 'dart:convert';

import 'package:idiada_project/data/model/equilibrium.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_items.g.dart';

@JsonSerializable()
class InfoItems {
  @JsonKey(name: "Equilibrium conv.")
  final List<Equilibrium> equilibriums;

  InfoItems({
    required this.equilibriums,
  });

  factory InfoItems.fromJsonString(String json) {
    return InfoItems.fromJson(jsonDecode(json));
  }

  factory InfoItems.fromJson(Map<String, dynamic> json) => _$InfoItemsFromJson(json);

  Map<String, dynamic> toJson() => _$InfoItemsToJson(this);
}

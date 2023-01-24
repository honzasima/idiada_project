// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoItems _$InfoItemsFromJson(Map<String, dynamic> json) => InfoItems(
      equilibriums: (json['Equilibrium conv.'] as List<dynamic>)
          .map((e) => Equilibrium.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InfoItemsToJson(InfoItems instance) => <String, dynamic>{
      'Equilibrium conv.': instance.equilibriums,
    };

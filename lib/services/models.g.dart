// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JournalResult _$JournalResultFromJson(Map<String, dynamic> json) =>
    JournalResult(
      numHomeCookedMeals: json['numHomeCookedMeals'] as int? ?? 0,
      mealTimes: (json['mealTimes'] as List<dynamic>?)
              ?.map((e) => DateTime.parse(e as String))
              .toList() ??
          const [],
      dataEntryTime: DateTime.parse(json['dataEntryTime'] as String),
    );

Map<String, dynamic> _$JournalResultToJson(JournalResult instance) =>
    <String, dynamic>{
      'numHomeCookedMeals': instance.numHomeCookedMeals,
      'mealTimes': instance.mealTimes.map((e) => e.toIso8601String()).toList(),
      'dataEntryTime': instance.dataEntryTime.toIso8601String(),
    };

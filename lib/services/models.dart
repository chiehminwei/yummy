import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class JournalResult {
  int numHomeCookedMeals;
  List<DateTime> mealTimes;
  final DateTime dataEntryTime;
  JournalResult({
    this.numHomeCookedMeals = 0,
    this.mealTimes = const [],
    required this.dataEntryTime,
  });
  factory JournalResult.fromJson(Map<String, dynamic> json) =>
      _$JournalResultFromJson(json);
  Map<String, dynamic> toJson() => _$JournalResultToJson(this);
}

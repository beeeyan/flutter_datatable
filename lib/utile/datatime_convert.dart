

import 'package:freezed_annotation/freezed_annotation.dart';

/// DateTime ← → DateTimeの変換
/// UTCタイムゾーンで保存、表示の際は「toLocal」で現在地のタイムゾーンを利用
///
class DatetimeConverter implements JsonConverter<DateTime, String> {
  const DatetimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json).toLocal();

  @override
  String toJson(DateTime object) => object.toUtc().toIso8601String();
}

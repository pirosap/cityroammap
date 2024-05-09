import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'kuma.freezed.dart';
part 'kuma.g.dart';

@freezed
class Kuma with _$Kuma {
  const factory Kuma({
    required String name,
    required String description,
    required String url,
    required String type,
    required String channel,
    required int QoS,
    required double longitude,
    required double latitude,
    required String confirmedTime,
  }) = _Kuma;

  factory Kuma.fromJson(Map<String, Object?> json) => _$KumaFromJson(json);
}

extension KumaExt on Kuma {
  DateTime get confirmdDateTime => DateTime.parse(confirmedTime);
  String get confirmedTimeStr =>
      DateFormat('yyyy/MM/dd HH:mm').format(confirmdDateTime);
}

import 'package:equatable/equatable.dart';

class Mosque extends Equatable {
  final int id;
  final String name;
  final String updated;
  final String img;
  final String distance;
  final String addressFull;
  final String addressAdvice;
  final String fajrTime;
  final String dhuhrTime;
  final String asrTime;
  final String maghribTime;
  final String ishaTime;
  final String jumuahTime;

  const Mosque({
    required this.id,
    required this.name,
    required this.updated,
    required this.img,
    required this.distance,
    required this.addressFull,
    required this.addressAdvice,
    required this.fajrTime,
    required this.dhuhrTime,
    required this.asrTime,
    required this.maghribTime,
    required this.ishaTime,
    required this.jumuahTime,
  });

  @override
  List<Object> get props => [id];

  factory Mosque.fromJson(Map<String, dynamic> json) {
    return Mosque(
      id: json['id'],
      name: json['name'],
      updated: json['updated'],
      img: json['img'],
      distance: json['distance'],
      addressFull: json['address']['full'],
      addressAdvice: json['address']['advice'],
      fajrTime: json['prayertimes']['fajr'],
      dhuhrTime: json['prayertimes']['dhuhr'],
      asrTime: json['prayertimes']['asr'],
      maghribTime: json['prayertimes']['maghrib'],
      ishaTime: json['prayertimes']['isha'],
      jumuahTime: json['prayertimes']['jumuah'],
    );
  }
}

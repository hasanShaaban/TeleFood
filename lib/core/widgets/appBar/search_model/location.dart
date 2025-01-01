import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String? governorate;
  final String? location;

  const Location({this.governorate, this.location});

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        governorate: json['governorate'] as String?,
        location: json['location'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'governorate': governorate,
        'location': location,
      };

  @override
  List<Object?> get props => [governorate, location];
}

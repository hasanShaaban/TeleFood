import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? image;
  final String? location;
  final String? locationDetails;
  final String? mobile;
  final dynamic fcmToken;

  const Data({
    this.firstName,
    this.lastName,
    this.image,
    this.location,
    this.locationDetails,
    this.mobile,
    this.fcmToken,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        firstName: json['first name'] as String?,
        lastName: json['last_name'] as String?,
        image: json['image'] as String?,
        location: json['location'] as String?,
        locationDetails: json['location_details'] as String?,
        mobile: json['mobile'] as String?,
        fcmToken: json['fcm_token'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'first name': firstName,
        'last_name': lastName,
        'image': image,
        'location': location,
        'location_details': locationDetails,
        'mobile': mobile,
        'fcm_token': fcmToken,
      };

  @override
  List<Object?> get props {
    return [
      firstName,
      lastName,
      image,
      location,
      locationDetails,
      mobile,
      fcmToken,
    ];
  }
}

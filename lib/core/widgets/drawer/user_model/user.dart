import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? imageUrl;
  final String? location;
  final String? locationDetails;
  final String? role;
  final String? mobile;
  final dynamic fcmToken;
  final dynamic emailVerifiedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const User({
    this.id,
    this.firstName,
    this.lastName,
    this.imageUrl,
    this.location,
    this.locationDetails,
    this.role,
    this.mobile,
    this.fcmToken,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        imageUrl: json['image_url'] as String?,
        location: json['location'] as String?,
        locationDetails: json['location_details'] as String?,
        role: json['role'] as String?,
        mobile: json['mobile'] as String?,
        fcmToken: json['fcm_token'] as dynamic,
        emailVerifiedAt: json['email_verified_at'] as dynamic,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'image_url': imageUrl,
        'location': location,
        'location_details': locationDetails,
        'role': role,
        'mobile': mobile,
        'fcm_token': fcmToken,
        'email_verified_at': emailVerifiedAt,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      firstName,
      lastName,
      imageUrl,
      location,
      locationDetails,
      role,
      mobile,
      fcmToken,
      emailVerifiedAt,
      createdAt,
      updatedAt,
    ];
  }
}

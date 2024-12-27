import 'package:equatable/equatable.dart';

class RegistrationResponse extends Equatable {
  final String? message;
  final int? status;

  const RegistrationResponse({this.message, this.status});

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) {
    return RegistrationResponse(
      message: json['message'] as String?,
      status: json['status'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'message': message,
        'status': status,
      };

  @override
  List<Object?> get props => [message, status];
}

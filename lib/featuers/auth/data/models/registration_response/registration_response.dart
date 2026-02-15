import 'package:equatable/equatable.dart';

import 'message.dart';

class RegistrationResponse extends Equatable {
  final Message? message;
  final int? status;

  const RegistrationResponse({this.message, this.status});

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) {
    return RegistrationResponse(
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'message': message?.toJson(),
        'status': status,
      };

  @override
  List<Object?> get props => [message, status];
}

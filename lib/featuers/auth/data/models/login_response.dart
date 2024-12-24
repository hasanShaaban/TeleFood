import 'package:equatable/equatable.dart';

class LoginResponse extends Equatable {
  final String? message;
  final String? token;
  final int? status;

  const LoginResponse({this.message, this.token, this.status});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        message: json['message'] as String?,
        token: json['token'] as String?,
        status: json['status'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'token': token,
        'status': status,
      };

  @override
  List<Object?> get props => [message, token, status];
}

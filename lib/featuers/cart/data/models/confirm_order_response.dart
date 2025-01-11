import 'package:equatable/equatable.dart';

class ConfirmOrderResponse extends Equatable {
  final String? message;
  final int? status;

  const ConfirmOrderResponse({this.message, this.status});

  factory ConfirmOrderResponse.fromJson(Map<String, dynamic> json) {
    return ConfirmOrderResponse(
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

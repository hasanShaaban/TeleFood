import 'package:equatable/equatable.dart';

class OrderResponse extends Equatable {
  final String? message;
  final int? status;

  const OrderResponse({this.message, this.status});

  factory OrderResponse.fromJson(Map<String, dynamic> json) => OrderResponse(
        message: json['message'] as String?,
        status: json['status'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'status': status,
      };

  @override
  List<Object?> get props => [message, status];
}

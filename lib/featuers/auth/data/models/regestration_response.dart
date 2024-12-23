import 'dart:convert';

import 'package:equatable/equatable.dart';

class RegestrationResponse extends Equatable {
  final String? message;
  final int? status;

  const RegestrationResponse({this.message, this.status});

  factory RegestrationResponse.fromMap(Map<String, dynamic> data) {
    return RegestrationResponse(
      message: data['message'] as String?,
      status: data['status'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message,
        'status': status,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [RegestrationResponse].
  factory RegestrationResponse.fromJson(String data) {
    return RegestrationResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [RegestrationResponse] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [message, status];
}

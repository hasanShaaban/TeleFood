import 'package:equatable/equatable.dart';

class Message extends Equatable {
  final String? response;
  final String? token;

  const Message({this.response, this.token});

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        response: json['response'] as String?,
        token: json['token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'response': response,
        'token': token,
      };

  @override
  List<Object?> get props => [response, token];
}

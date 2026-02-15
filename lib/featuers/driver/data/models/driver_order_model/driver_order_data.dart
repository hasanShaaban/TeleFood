import 'package:equatable/equatable.dart';

class DriverOrderData extends Equatable {
  final String? location;
  final String? driverName;
  final String? motorcycleNumber;
  final String? orderId;
  final String? timeToArrive;

  const DriverOrderData({
    this.location,
    this.driverName,
    this.motorcycleNumber,
    this.orderId,
    this.timeToArrive,
  });

  factory DriverOrderData.fromJson(Map<String, dynamic> json) => DriverOrderData(
        location: json['location'] as String?,
        driverName: json['driver_name'] as String?,
        motorcycleNumber: json['motorcycle_number'] as String?,
        orderId: json['order_id'] as String?,
        timeToArrive: json['time to arrive'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'location': location,
        'driver_name': driverName,
        'motorcycle_number': motorcycleNumber,
        'order_id': orderId,
        'time to arrive': timeToArrive,
      };

  @override
  List<Object?> get props {
    return [
      location,
      driverName,
      motorcycleNumber,
      orderId,
      timeToArrive,
    ];
  }
}

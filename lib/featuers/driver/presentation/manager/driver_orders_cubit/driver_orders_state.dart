part of 'driver_orders_cubit.dart';

abstract class DriverOrdersState extends Equatable {
  const DriverOrdersState();

  @override
  List<Object> get props => [];
}

final class DriverOrdersInitial extends DriverOrdersState {}
final class DriverOrdersLoadin extends DriverOrdersState {}
final class DriverOrdersSuccess extends DriverOrdersState {
  final DriverOrderModel response;
  const DriverOrdersSuccess(this.response);
}
final class DriverOrdersFailuer extends DriverOrdersState {
  final String errorMessage;
  const DriverOrdersFailuer(this.errorMessage);
}

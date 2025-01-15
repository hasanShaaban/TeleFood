
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/featuers/driver/data/models/driver_order_model/driver_order_model.dart';
import 'package:telefood/featuers/driver/data/repo/driver_repo_impl.dart';

part 'driver_orders_state.dart';

class DriverOrdersCubit extends Cubit<DriverOrdersState> {
  DriverOrdersCubit(this.driverRepoImpl) : super(DriverOrdersInitial());

  final DriverRepoImpl driverRepoImpl;
  Future<void> getDriverOrders()async{
    emit(DriverOrdersLoadin());
    var result = await driverRepoImpl.getDriverOrders();
    result.fold((failuer){
      emit(DriverOrdersFailuer(failuer.errorMessage));
    }, (response){
      emit(DriverOrdersSuccess(response));
    });
  }
}

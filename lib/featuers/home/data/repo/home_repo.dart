import 'package:dartz/dartz.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_model.dart';

abstract class HomeRepo {
  Future<Either<Failuer, StoreModel>> getStores();
}

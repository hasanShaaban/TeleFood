import 'package:telefood/featuers/home/data/models/store_model/store_model.dart';

class Governorates {
  static List<String> allGovernorates = [];
  static List<String> getGovernorates(StoreModel model){
    List<String> governorates = ['all'];
    for(var item in model.data!){
      if(!governorates.contains(item.locations![0].governorate!)){
        governorates.add(item.locations![0].governorate!);
      }
    }
    return governorates;
  }
}
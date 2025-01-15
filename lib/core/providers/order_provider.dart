import 'package:flutter/material.dart';

class OrderProvider extends ChangeNotifier{
  int? payId;
  String? location;
  int? tips;

  OrderProvider();

  void setPayId(int? newPayId) async{
    payId = newPayId;
    notifyListeners();
  }
  void setLocation(String newLocation) async{
    location = newLocation;
    notifyListeners();
  }
  void setTips(int newTips) async{
    tips = newTips;
    notifyListeners();
  }
}
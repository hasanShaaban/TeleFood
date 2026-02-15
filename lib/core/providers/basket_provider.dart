import 'package:flutter/material.dart';

class BasketProvider extends ChangeNotifier {
  String? id;
  String? quantity;
  String? description = 'no description';

  BasketProvider();

  void setId({required String newId}) async {
    id = newId;
    notifyListeners();
  }

  void setQuantity({required String newQuantity}) {
    quantity = newQuantity;
    notifyListeners();
  }

  void setDescription({required String newDescription}) {
    description = newDescription;
    notifyListeners();
  }
}

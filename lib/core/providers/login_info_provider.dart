import 'package:flutter/material.dart';

class LoginInfoProvider extends ChangeNotifier{

  String? phoneNumber;
  String? passowrd;

  LoginInfoProvider();

  void setPhoneNumber({required String newPhoneNumber})async{
    phoneNumber = newPhoneNumber;
    notifyListeners();
  }
  void setPassword({required String newPassword})async{
    passowrd = newPassword;
    notifyListeners();
  }
}
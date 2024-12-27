import 'dart:io';

import 'package:flutter/material.dart';

class SignupInfoProvider extends ChangeNotifier {
  String? firstName;
  String? lastName;
File? image;
  String? mobile;
  String? passowrd;
  String? confirmPassowrd;
  String? location;
  String? locationDetails;

  SignupInfoProvider();
void setFirstName({required String newfirstName}) async {
    firstName = newfirstName;
    notifyListeners();
  }
  void setLastName({required String newlastName}) async {
    lastName = newlastName;
    notifyListeners();
  }
void setImage({File? newImage}) async {
    image = newImage;
    notifyListeners();
  }
  void setMobile({required String newMobile}) async {
    mobile = newMobile;
    notifyListeners();
  }

  void setPassword({required String newPassword}) async {
    passowrd = newPassword;
    notifyListeners();
  }
  void setConfirmPassword({required String newConfrimPassword}) async {
    passowrd = newConfrimPassword;
    notifyListeners();
  }
  void setLocation({required String newLocation}) async {
    passowrd = newLocation;
    notifyListeners();
  }
  void setLocationDetails({required String newLocationDetails}) async {
    passowrd = newLocationDetails;
    notifyListeners();
  }
}

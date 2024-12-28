import 'dart:io';

class RegistrationModel {
  String? firstName;
  String? lastName;
  File? image;
  String? mobile;
  String? passowrd;
  String? confirmPassowrd;
  String? location;
  String? locationDetails;

  RegistrationModel(
      {this.firstName,
      this.lastName,
      this.image,
      this.mobile,
      this.passowrd,
      this.confirmPassowrd,
      this.location,
      this.locationDetails});
}



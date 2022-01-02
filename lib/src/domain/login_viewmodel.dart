import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginViewModel extends GetxController {
  /// `Variables`
  String username = '';
  String password = '';
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  /// `Getters`

  /// `Setters`

  /// `Methods`
  void loginUser() {
    /// Close soft keyboard of the device
    FocusScope.of(kGlobalContext).unfocus();

    /// If we have validation error then do nothing and return
    if (loginFormKey.currentState!.validate()) return;

    /// We have no validation error so save the form state
    loginFormKey.currentState!.save();
    //TODO: Connect to data layer and login
  }
}

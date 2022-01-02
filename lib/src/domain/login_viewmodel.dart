import 'package:barg_challenge/src/config/app_routes.dart';
import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:barg_challenge/src/core/util/util.dart';
import 'package:barg_challenge/src/data/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  /// `Variables`
  AuthApiService _authApiService = AuthApiService();
  String username = '';
  String password = '';
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  LoginState _loginState = LoginState.initial;

  /// `Getters`
  LoginState get loginState => _loginState;

  /// `Setters`
  set loginState(LoginState value) {
    _loginState = value;
    update();
  }

  /// `Methods`
  Future loginUser() async {
    /// Close soft keyboard of the device
    FocusScope.of(kAppContext).unfocus();

    /// If we have validation error then do nothing and return
    if (!loginFormKey.currentState!.validate()) return;

    /// We have no validation error so save the form state
    loginFormKey.currentState!.save();

    /// Change state of the page to in_progress so we can show loading in the UI
    loginState = LoginState.in_progress;
    bool _loginResult = await _authApiService.login(username, password);
    if (!_loginResult) {
      loginState = LoginState.initial;
      _showFailSnackbar();
    } else {
      loginState = LoginState.login_success;
      Get.offAndToNamed(AppRoutes.homeRoute);
    }
  }

  void _showFailSnackbar() {
    Get.snackbar(
      "login_failed".tr,
      "login_fail_desc".tr,
      icon: const Icon(Icons.error, color: Colors.orange),
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(milliseconds: 3500),
      backgroundColor: Colors.white.withOpacity(0.4),
      colorText: Colors.orange,
    );
  }
}

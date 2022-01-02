import 'package:barg_challenge/src/view/screens/login/login_view_mobile.dart';
import 'package:base_platform/base_platform.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// [MyBaseWidget] contains `Scaffold`, `SafeArea` and `SingleChildScrollView`
    /// and all of them are platform based. Also it hanldes responsive design
    return MyBaseWidget(
      backgroundColor: Theme.of(context).colorScheme.primary,
      mobileChild: const LoginView(),
    );
  }
}
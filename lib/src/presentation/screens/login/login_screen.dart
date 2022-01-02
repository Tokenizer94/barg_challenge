import 'package:barg_challenge/src/core/util/util.dart';
import 'package:barg_challenge/src/domain/login_viewmodel.dart';
import 'package:barg_challenge/src/presentation/components/elevated_button_widget.dart';
import 'package:base_platform/base_platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

part 'login_view_mobile.dart';

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

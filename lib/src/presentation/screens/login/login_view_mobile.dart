part of 'login_screen.dart';

class LoginViewMobile extends HookWidget {
  const LoginViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameTEC = useTextEditingController();
    FocusNode _usernameFN = useFocusNode();
    TextEditingController _passwordTEC = useTextEditingController();
    FocusNode _passwordFN = useFocusNode();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: <Widget>[
          SizedBox(height: 0.2.sh),
          Form(
            key: Get.find<LoginViewModel>().loginFormKey,
            child: Column(
              children: <Widget>[
                /// `Username` text field
                LoginTextFieldWidget(
                  controller: _usernameTEC,
                  focusNode: _usernameFN,
                  type: LoginTextFieldType.username,
                ),

                /// `Password` text field
                LoginTextFieldWidget(
                  controller: _passwordTEC,
                  focusNode: _passwordFN,
                  type: LoginTextFieldType.password,
                ),
                SizedBox(height: 0.3.sh),

                /// `Login button`
                GetBuilder(
                  builder: (LoginViewModel loginViewModel) {
                    return ElevatedButtonWidget(
                      btnText: 'login'.tr,
                      width: 0.5.sw,
                      isLoading:
                          loginViewModel.loginState == LoginState.in_progress,
                      onPressBtn:
                          loginViewModel.loginState == LoginState.in_progress
                              ? null
                              : loginViewModel.loginUser,
                    );
                  },
                ),
                SizedBox(height: 0.1.sh),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

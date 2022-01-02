part of 'login_screen.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _loginViewModel = Get.find<LoginViewModel>();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: <Widget>[
          SizedBox(height: 0.2.sh),
          Form(
            key: _loginViewModel.loginFormKey,
            child: Column(
              children: <Widget>[
                const UsernameTextField(),
                SizedBox(height: 30.h),
                const PasswordTextField(),
                SizedBox(height: 0.4.sh),

                /// Login button
                ElevatedButtonWidget(
                  btnText: 'login'.tr,
                  onPressBtn: _loginViewModel.loginUser,
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

/// `Username` text field widget
class UsernameTextField extends HookWidget {
  const UsernameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameTEC = useTextEditingController();
    FocusNode _usernameFN = useFocusNode();
    return TextFormField(
      controller: _usernameTEC,
      focusNode: _usernameFN,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      maxLength: 100,
      minLines: 1,
      textAlign: TextAlign.left,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: styleGenerator(fontSize: 13),
      decoration: InputDecoration(
        labelText: 'username'.tr,
        labelStyle: styleGenerator(fontColor: Colors.white38),
        counterText: '',
        contentPadding: EdgeInsets.symmetric(vertical: 12.h),
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
      validator: Validators.usernameValidator,
      onSaved: (String? value) =>
          Get.find<LoginViewModel>().username = value ?? '',
    );
  }
}

/// `Password` text field widget
class PasswordTextField extends HookWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _passwordTEC = useTextEditingController();
    FocusNode _passwordFN = useFocusNode();
    return TextFormField(
      controller: _passwordTEC,
      focusNode: _passwordFN,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      maxLength: 100,
      minLines: 1,
      textAlign: TextAlign.left,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: styleGenerator(fontSize: 13),
      decoration: InputDecoration(
        labelText: 'password'.tr,
        labelStyle: styleGenerator(fontColor: Colors.white38),
        counterText: '',
        contentPadding: EdgeInsets.symmetric(vertical: 12.h),
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
      validator: Validators.passwordValidator,
      onSaved: (String? value) =>
          Get.find<LoginViewModel>().username = value ?? '',
    );
  }
}

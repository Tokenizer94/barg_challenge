import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:barg_challenge/src/core/util/util.dart';
import 'package:barg_challenge/src/domain/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

enum LoginTextFieldType { username, password }

class LoginTextFieldWidget extends StatelessWidget {
  final LoginTextFieldType type;
  final TextEditingController controller;
  final FocusNode focusNode;

  const LoginTextFieldWidget({
    Key? key,
    required this.type,
    required this.controller,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 0.12.sh,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: type == LoginTextFieldType.username
            ? TextInputType.text
            : TextInputType.visiblePassword,
        textInputAction: type == LoginTextFieldType.username
            ? TextInputAction.next
            : TextInputAction.done,
        maxLength: 100,
        minLines: 1,
        obscureText: type == LoginTextFieldType.password,
        obscuringCharacter: '*',
        textAlign: TextAlign.left,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: styleGenerator(fontSize: 14),
        decoration: InputDecoration(
          labelText: type == LoginTextFieldType.username
              ? 'username'.tr
              : 'password'.tr,
          labelStyle: styleGenerator(fontColor: Colors.white54, fontSize: 14),
          counterText: '',
          contentPadding:
              EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          alignLabelWithHint: true,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderRadius:
                const BorderRadius.all(Radius.circular(kBorderRadius)),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius:
                const BorderRadius.all(Radius.circular(kBorderRadius)),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius:
                const BorderRadius.all(Radius.circular(kBorderRadius)),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        validator: type == LoginTextFieldType.username
            ? Validators.usernameValidator
            : Validators.passwordValidator,
        onSaved: (String? value) {
          if (type == LoginTextFieldType.username) {
            Get.find<LoginViewModel>().username = value ?? '';
          } else if (type == LoginTextFieldType.password) {
            Get.find<LoginViewModel>().password = value ?? '';
          }
        },
      ),
    );
  }
}

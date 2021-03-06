import 'package:barg_challenge/src/core/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String btnText;
  final bool isLoading;
  final Function()? onPressBtn;

  const ElevatedButtonWidget({
    Key? key,
    required this.btnText,
    this.width,
    this.height,
    this.onPressBtn,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 40.h,
      child: ElevatedButton(
        onPressed: onPressBtn,
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                btnText,
                style: styleGenerator(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }
}

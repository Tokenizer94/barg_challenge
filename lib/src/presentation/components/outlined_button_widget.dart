import 'package:barg_challenge/src/core/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String btnText;
  final bool isLoading;
  final Function()? onPressBtn;

  const OutlinedButtonWidget({
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
      width: width ?? 0.45.sw,
      height: height ?? 40.h,
      child: OutlinedButton(
        onPressed: onPressBtn,
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                btnText,
                style: styleGenerator(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontColor: Theme.of(context).colorScheme.surface,
                ),
              ),
      ),
    );
  }
}

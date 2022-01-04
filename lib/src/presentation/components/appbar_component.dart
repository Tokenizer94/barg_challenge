import 'package:barg_challenge/src/core/util/util.dart';
import 'package:barg_challenge/src/presentation/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppbarComponent extends StatelessWidget {
  final String titleText;
  final String profileImage;
  final bool hasBackButton;
  final Function()? onTap;
  const AppbarComponent({
    Key? key,
    required this.titleText,
    required this.profileImage,
    this.hasBackButton = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      child: Container(
        width: double.infinity,
        height: 0.12.sh,
        alignment: Alignment.bottomLeft,
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            children: <Widget>[
              /// `User avatar`
              UserAvatarComponent(image: profileImage),
              SizedBox(width: 12.w),

              /// `Appbar title`
              Text(titleText, style: styleGenerator()),

              /// `Back button`
              if (hasBackButton) ...[
                const Spacer(),
                IconButton(
                  onPressed: () => Get.back(),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  iconSize: 18.w,
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

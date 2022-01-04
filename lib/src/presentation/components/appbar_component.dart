import 'package:barg_challenge/src/core/util/util.dart';
import 'package:barg_challenge/src/presentation/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarComponent extends StatelessWidget {
  final String titleText;
  final String profileImage;
  final Function()? onTap;
  const AppbarComponent({
    Key? key,
    required this.titleText,
    required this.profileImage,
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
              UserAvatarComponent(image: profileImage),
              SizedBox(width: 10.w),
              Text(titleText, style: styleGenerator()),
            ],
          ),
        ),
      ),
    );
  }
}

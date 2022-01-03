import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:barg_challenge/src/core/util/util.dart';
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
      //type: MaterialType.transparency,
      elevation: 4,
      child: Container(
        width: double.infinity,
        height: 0.075.sh,
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            children: <Widget>[
              UserAvatarWidget(profileImage: profileImage),
              SizedBox(width: 10.w),
              Text(titleText, style: styleGenerator()),
            ],
          ),
        ),
      ),
    );
  }
}

/// User avatar widget that load image from network and has placeholder and error builder
class UserAvatarWidget extends StatelessWidget {
  final String profileImage;
  const UserAvatarWidget({
    Key? key,
    required this.profileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.w,
      backgroundColor: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80.r),
        child: FadeInImage.assetNetwork(
          placeholder: kAvatarPlaceHolderAsset,
          imageScale: 0.7,
          image: profileImage,
          fit: BoxFit.fill,
          imageErrorBuilder: (_, __, ___) {
            return Image.asset(kAvatarPlaceHolderAsset);
          },
        ),
      ),
    );
  }
}

import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// User avatar widget that load image from network and has placeholder and error builder
class UserAvatarComponent extends StatelessWidget {
  final double? radius;
  final String image;
  const UserAvatarComponent({
    Key? key,
    this.radius,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.w,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: FadeInImage.assetNetwork(
          placeholder: kAvatarPlaceHolderAsset,
          image: image,
          fit: BoxFit.cover,
          imageErrorBuilder: (_, __, ___) {
            return Image.asset(kAvatarPlaceHolderAsset);
          },
        ),
      ),
    );
  }
}

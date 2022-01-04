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
    /// Here we use 2 CircleAvatar. First one is just for placeholder and second one is
    /// the network image. So if we cannot load image from network then the placeholder 
    /// will be visible. There are many other solutions but this one is the best solution.
    return CircleAvatar(
      radius: radius ?? 20.w,
      backgroundColor: Colors.transparent,
      backgroundImage: const AssetImage(kAvatarPlaceHolderAsset),
      child: CircleAvatar(
        radius: radius ?? 20.w,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}

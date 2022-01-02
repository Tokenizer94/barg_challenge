import 'package:barg_challenge/src/core/util/util.dart';
import 'package:base_platform/base_platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'home_view_mobile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyBaseWidget(
      mobileChild: HomeViewMobile(),
    );
  }
}

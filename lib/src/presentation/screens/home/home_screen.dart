import 'package:barg_challenge/src/core/util/util.dart';
import 'package:barg_challenge/src/domain/user_viewmodel.dart';
import 'package:barg_challenge/src/presentation/components/components.dart';
import 'package:base_platform/base_platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

part 'home_view_mobile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyBaseWidget(
      hasScrollView: false,
      mobileChild: HomeViewMobile(),
    );
  }
}

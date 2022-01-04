import 'package:barg_challenge/src/domain/user_viewmodel.dart';
import 'package:barg_challenge/src/presentation/components/components.dart';
import 'package:barg_challenge/src/presentation/screens/profile/widgets/custom_richtext_widget.dart';
import 'package:base_platform/base_platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

part 'profile_view_mobile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyBaseWidget(
      mobileChild: ProfileViewMobile(),
    );
  }
}

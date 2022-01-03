import 'package:barg_challenge/src/presentation/components/components.dart';
import 'package:base_platform/base_platform.dart';
import 'package:flutter/material.dart';

part 'home_view_mobile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyBaseWidget(
      hasSafeArea: true,
      mobileChild: HomeViewMobile(),
    );
  }
}

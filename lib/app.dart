import 'package:barg_challenge/src/config/config.dart';
import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// `ScreenUtil` is for making app responsive
    return ScreenUtilInit(
      designSize: kDesignSizeMobile,
      builder: () => GetMaterialApp(
        navigatorKey: kNavigatorKey,
        fallbackLocale: const Locale('en', 'US'),
        locale: const Locale('en', 'US'),
        translationsKeys: AppTranslation.translationsKeys,
        debugShowCheckedModeBanner: false,

        /// change route transition animation
        defaultTransition: Transition.leftToRight,
        theme: AppTheme.light,
        initialRoute: AppRoutes.loginRoute,

        /// Get package routes
        getPages: AppRoutes.getPages(),
      ),
    );
  }
}

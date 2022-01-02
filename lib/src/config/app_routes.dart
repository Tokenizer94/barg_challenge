import 'package:barg_challenge/src/domain/login_viewmodel.dart';
import 'package:barg_challenge/src/presentation/presentation.dart';
import 'package:get/get.dart';

class AppRoutes{
  static const String loginRoute = '/login';
  static const String homeRoute = '/home';

  static List<GetPage<dynamic>>? getPages() {
    return [
      GetPage(
        name: loginRoute,
        page: () => const LoginScreen(),
        binding: BindingsBuilder(() => {Get.put(LoginViewModel())}),
      ),
      GetPage(
        name: homeRoute,
        page: () => const HomeScreen(),
      ),
    ];
  }
}

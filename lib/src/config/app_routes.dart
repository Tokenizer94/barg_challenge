import 'package:barg_challenge/src/domain/login_viewmodel.dart';
import 'package:barg_challenge/src/presentation/presentation.dart';
import 'package:get/get.dart';

class AppRoutes{
  static const String loginRoute = '/login';

  static List<GetPage<dynamic>>? getPages() {
    return [
      GetPage(
        name: loginRoute,
        page: () => const LoginScreen(),
        binding: BindingsBuilder(() => {Get.put(LoginViewModel())}),
      ),
    ];
  }
}

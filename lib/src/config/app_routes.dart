import 'package:barg_challenge/src/view/screens/login/login_screen.dart';
import 'package:get/get.dart';

class AppRoutes{
  static const String loginRoute = '/login';

  static List<GetPage<dynamic>>? getPages() {
    return [
      GetPage(
        name: loginRoute,
        page: () => const LoginScreen(),
      ),
    ];
  }
}
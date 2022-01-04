import 'package:barg_challenge/src/data/data.dart';
import 'package:get_it/get_it.dart';

/// `Dependecy Injection` using `get_it` package
final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  /// Services
  injector.registerSingleton<AuthApiService>(AuthApiService());
  injector.registerSingleton<UserApiService>(UserApiService());
}

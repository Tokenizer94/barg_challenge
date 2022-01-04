import 'package:barg_challenge/src/data/data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('login group', () {
    late AuthApiService authApiService;

    setUp(() {
      authApiService = AuthApiService();
    });
    
    test('login should be failed with wrong username', () async {
      /// Arrange
      /// Act
      final _loginResult = await authApiService.login('hello', '12345678');

      /// Assert
      expect(_loginResult, false);
    });

    test('login should be failed with wrong password', () async {
      /// Arrange
      /// Act
      final _loginResult = await authApiService.login('test', 'aaa');

      /// Assert
      expect(_loginResult, false);
    });

    test('login should be failed with empty username and password', () async {
      /// Arrange
      /// Act
      final _loginResult = await authApiService.login('', '');

      /// Assert
      expect(_loginResult, false);
    });

    test('login should be succesful with correct username and password', () async {
      /// Arrange
      /// Act
      final _loginResult = await authApiService.login('test', '12345678');

      /// Assert
      expect(_loginResult, true);
    });
  });
}

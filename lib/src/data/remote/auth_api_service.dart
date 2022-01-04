/// Class for authentication services such as `login` and `logout`
class AuthApiService {
  /// Fake login service
  Future<bool> login(String username, String password) async {
    await Future.delayed(const Duration(milliseconds: 1500));

    /// If [username] and [password] are correct then we return `true`
    if (username == 'test' && password == '12345678') {
      return true;
    }
    return false;
  }
}

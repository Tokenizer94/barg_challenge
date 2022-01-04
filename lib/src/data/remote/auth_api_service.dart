/// Class for authentication services such as `login` and `logout`
class AuthApiService {
  /// Fake login service
  Future<bool> login(String username, String password) async {
    await Future.delayed(const Duration(milliseconds: 1200));

    /// If [username] and [password] are correct then we return `true`
    if (username == 'aaa' && password == 'aaaaaaaa') {
      return true;
    }
    return false;
  }
}

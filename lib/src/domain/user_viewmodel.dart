import 'package:barg_challenge/injector.dart';
import 'package:barg_challenge/src/data/data.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserViewModel extends GetxController {
  /// `Variables`
  UserApiService _userApiService = injector<UserApiService>();
  List<User> _users = [];
  User _currentUser = const User(
    guid: '',
    isOwner: true,
    name: 'Unknown user',
  );

  /// `Getters`
  List<User> get users => _users;
  User get currentUser => _currentUser;

  /// `Setters`
  set users(List<User> value) {
    if (!listEquals(_users, value)) {
      _users = value;
      update();
    }
  }

  set currentUser(User value) {
    if (value != _currentUser) {
      _currentUser = value;
      update();
    }
  }

  /// `Methods`

  /// Get list of users from our data source
  Future getUsers() async {
    final _getUsersResult = await _userApiService.getUsersList();
    _getUsersResult.fold(
      (fail) => null,
      (usersResult) {
        users = usersResult;
      },
    );
  }

  /// Search for the user tht its `isOwner` property is `true`
  void findAndUpdateCurrentUser() {
    if (users.isNotEmpty) {
      currentUser = users.firstWhere((user) {
        return user.isOwner == true;
      });
    }
  }

  Future refreshData() async {
    await getUsers();
    findAndUpdateCurrentUser();
  }

  @override
  Future onReady() async {
    super.onReady();
    await getUsers();
    findAndUpdateCurrentUser();
  }
}

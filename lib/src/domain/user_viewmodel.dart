import 'package:barg_challenge/injector.dart';
import 'package:barg_challenge/src/data/data.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserViewModel extends GetxController {
  /// `Variables`
  UserApiService _userApiService = injector<UserApiService>();

  /// [_isDataLoaded] for handle loading in the view of UI
  bool _isDataLoaded = false;
  User _selectedUserForProfileInspection = const User(
    guid: '',
    isOwner: true,
    name: 'Unknown user',
  );
  List<User> _users = [];
  User _currentUser = const User(
    guid: '',
    isOwner: true,
    name: 'Unknown user',
  );

  /// `Getters`
  bool get isDataLoaded => _isDataLoaded;
  User get selectedUserForProfileInspection =>
      _selectedUserForProfileInspection;
  List<User> get users => _users;
  User get currentUser => _currentUser;

  /// `Setters`
  set isDataLoaded(bool value) {
    _isDataLoaded = value;
    update();
  }

  set selectedUserForProfileInspection(User value) {
    _selectedUserForProfileInspection = value;
    update();
  }

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
        isDataLoaded = true;
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
    isDataLoaded = false;
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

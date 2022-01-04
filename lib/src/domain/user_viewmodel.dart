import 'package:barg_challenge/injector.dart';
import 'package:barg_challenge/src/core/util/extensions.dart';
import 'package:barg_challenge/src/data/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    try {
      if (users.isNotEmpty) {
        currentUser = users.firstWhere((user) {
          return user.isOwner == true;
        });
      }
    } catch (e) {
      e.logIt();
    }
  }

  /// Get data from our data source
  Future refreshData() async {
    isDataLoaded = false;
    await getUsers();
    findAndUpdateCurrentUser();
  }

  void selectFriendProfile(String guid) {
    try {
      selectedUserForProfileInspection = users.firstWhere(
        (user) {
          return user.guid == guid;
        },
        orElse: () {
          _showFailSnackbar();
          return selectedUserForProfileInspection;
        },
      );
    } catch (e) {
      e.logIt();
    }
  }

  void _showFailSnackbar() {
    Get.snackbar(
      "user_not_founded".tr,
      "user_not_founded_desc".tr,
      icon: const Icon(Icons.error, color: Colors.orange),
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(milliseconds: 3500),
      backgroundColor: Colors.white.withOpacity(0.4),
      colorText: Colors.orange,
    );
  }

  @override
  Future onReady() async {
    super.onReady();
    await getUsers();
    findAndUpdateCurrentUser();
  }
}

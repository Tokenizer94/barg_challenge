import 'dart:convert';

import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:barg_challenge/src/data/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

class GetUsersFailure implements Exception {}

/// This class if for `user` related services. For instance getting list of users
class UserApiService {
  Future<Either<Exception, List<User>>> getUsersList() async {
    try {
      await Future.delayed(const Duration(milliseconds: 3000));
      /// Load fake json response from asset file
      final _jsonString = await _loadJsonAsset();
      final _decoded = await jsonDecode(_jsonString) as List;
      List<User> _users = [];
      _decoded.forEach((element) {
        _users.add(
          User.fromJson(element as Map<String, dynamic>),
        );
      });
      return Right(_users);
    } catch (e) {
      return Left(GetUsersFailure());
    }
  }

  Future<String> _loadJsonAsset() async {
    return rootBundle.loadString(kJsonAsset);
  }
}

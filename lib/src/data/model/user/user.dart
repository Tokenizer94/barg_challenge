import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String guid,
    required bool isOwner,
    String? balance,
    String? picture,
    int? age,
    String? eyeColor,
    String? name,
    String? gender,
    String? company,
    String? email,
    String? phone,
    String? address,
    String? about,
    String? registered,
    double? latitude,
    double? longitude,
    @Default([]) List<String> tags,
    @Default([]) List<Friend> friends,
    String? greeting,
    String? favoriteFruit,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Friend with _$Friend {
  const factory Friend({
    required int id,
    required String guid,
    String? name,
  }) = _Friend;
  factory Friend.fromJson(Map<String, dynamic> json) => _$FriendFromJson(json);
}

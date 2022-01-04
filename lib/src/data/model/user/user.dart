import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String guid,
    required bool isOwner,
    @Default('') String balance,
    @Default('') String picture,
    int? age,
    @Default('') String eyeColor,
    @Default('') String name,
    @Default('') String gender,
    @Default('') String company,
    @Default('') String email,
    @Default('') String phone,
    @Default('') String address,
    @Default('') String about,
    @Default('') String registered,
    double? latitude,
    double? longitude,
    @Default([]) List<String> tags,
    @Default([]) List<Friend> friends,
    @Default('') String greeting,
    @Default('') String favoriteFruit,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Friend with _$Friend {
  const factory Friend({
    required int id,
    required String guid,
    @Default('') String name,
  }) = _Friend;
  factory Friend.fromJson(Map<String, dynamic> json) => _$FriendFromJson(json);
}

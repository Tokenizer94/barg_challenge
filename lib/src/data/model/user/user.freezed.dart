// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String guid,
      required bool isOwner,
      String balance = '',
      String picture = '',
      int? age,
      String eyeColor = '',
      String name = '',
      String gender = '',
      String company = '',
      String email = '',
      String phone = '',
      String address = '',
      String about = '',
      String registered = '',
      double? latitude,
      double? longitude,
      List<String> tags = const [],
      List<Friend> friends = const [],
      String greeting = '',
      String favoriteFruit = ''}) {
    return _User(
      guid: guid,
      isOwner: isOwner,
      balance: balance,
      picture: picture,
      age: age,
      eyeColor: eyeColor,
      name: name,
      gender: gender,
      company: company,
      email: email,
      phone: phone,
      address: address,
      about: about,
      registered: registered,
      latitude: latitude,
      longitude: longitude,
      tags: tags,
      friends: friends,
      greeting: greeting,
      favoriteFruit: favoriteFruit,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get guid => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;
  String get balance => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String get eyeColor => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get registered => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<Friend> get friends => throw _privateConstructorUsedError;
  String get greeting => throw _privateConstructorUsedError;
  String get favoriteFruit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String guid,
      bool isOwner,
      String balance,
      String picture,
      int? age,
      String eyeColor,
      String name,
      String gender,
      String company,
      String email,
      String phone,
      String address,
      String about,
      String registered,
      double? latitude,
      double? longitude,
      List<String> tags,
      List<Friend> friends,
      String greeting,
      String favoriteFruit});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? guid = freezed,
    Object? isOwner = freezed,
    Object? balance = freezed,
    Object? picture = freezed,
    Object? age = freezed,
    Object? eyeColor = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? company = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? about = freezed,
    Object? registered = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? tags = freezed,
    Object? friends = freezed,
    Object? greeting = freezed,
    Object? favoriteFruit = freezed,
  }) {
    return _then(_value.copyWith(
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      eyeColor: eyeColor == freezed
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      registered: registered == freezed
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<Friend>,
      greeting: greeting == freezed
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteFruit: favoriteFruit == freezed
          ? _value.favoriteFruit
          : favoriteFruit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String guid,
      bool isOwner,
      String balance,
      String picture,
      int? age,
      String eyeColor,
      String name,
      String gender,
      String company,
      String email,
      String phone,
      String address,
      String about,
      String registered,
      double? latitude,
      double? longitude,
      List<String> tags,
      List<Friend> friends,
      String greeting,
      String favoriteFruit});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? guid = freezed,
    Object? isOwner = freezed,
    Object? balance = freezed,
    Object? picture = freezed,
    Object? age = freezed,
    Object? eyeColor = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? company = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? about = freezed,
    Object? registered = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? tags = freezed,
    Object? friends = freezed,
    Object? greeting = freezed,
    Object? favoriteFruit = freezed,
  }) {
    return _then(_User(
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      eyeColor: eyeColor == freezed
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      registered: registered == freezed
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<Friend>,
      greeting: greeting == freezed
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteFruit: favoriteFruit == freezed
          ? _value.favoriteFruit
          : favoriteFruit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {required this.guid,
      required this.isOwner,
      this.balance = '',
      this.picture = '',
      this.age,
      this.eyeColor = '',
      this.name = '',
      this.gender = '',
      this.company = '',
      this.email = '',
      this.phone = '',
      this.address = '',
      this.about = '',
      this.registered = '',
      this.latitude,
      this.longitude,
      this.tags = const [],
      this.friends = const [],
      this.greeting = '',
      this.favoriteFruit = ''});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String guid;
  @override
  final bool isOwner;
  @JsonKey()
  @override
  final String balance;
  @JsonKey()
  @override
  final String picture;
  @override
  final int? age;
  @JsonKey()
  @override
  final String eyeColor;
  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String gender;
  @JsonKey()
  @override
  final String company;
  @JsonKey()
  @override
  final String email;
  @JsonKey()
  @override
  final String phone;
  @JsonKey()
  @override
  final String address;
  @JsonKey()
  @override
  final String about;
  @JsonKey()
  @override
  final String registered;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @JsonKey()
  @override
  final List<String> tags;
  @JsonKey()
  @override
  final List<Friend> friends;
  @JsonKey()
  @override
  final String greeting;
  @JsonKey()
  @override
  final String favoriteFruit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(guid: $guid, isOwner: $isOwner, balance: $balance, picture: $picture, age: $age, eyeColor: $eyeColor, name: $name, gender: $gender, company: $company, email: $email, phone: $phone, address: $address, about: $about, registered: $registered, latitude: $latitude, longitude: $longitude, tags: $tags, friends: $friends, greeting: $greeting, favoriteFruit: $favoriteFruit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('guid', guid))
      ..add(DiagnosticsProperty('isOwner', isOwner))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('eyeColor', eyeColor))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('registered', registered))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('friends', friends))
      ..add(DiagnosticsProperty('greeting', greeting))
      ..add(DiagnosticsProperty('favoriteFruit', favoriteFruit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.guid, guid) &&
            const DeepCollectionEquality().equals(other.isOwner, isOwner) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.eyeColor, eyeColor) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality()
                .equals(other.registered, registered) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.friends, friends) &&
            const DeepCollectionEquality().equals(other.greeting, greeting) &&
            const DeepCollectionEquality()
                .equals(other.favoriteFruit, favoriteFruit));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(guid),
        const DeepCollectionEquality().hash(isOwner),
        const DeepCollectionEquality().hash(balance),
        const DeepCollectionEquality().hash(picture),
        const DeepCollectionEquality().hash(age),
        const DeepCollectionEquality().hash(eyeColor),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(company),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(about),
        const DeepCollectionEquality().hash(registered),
        const DeepCollectionEquality().hash(latitude),
        const DeepCollectionEquality().hash(longitude),
        const DeepCollectionEquality().hash(tags),
        const DeepCollectionEquality().hash(friends),
        const DeepCollectionEquality().hash(greeting),
        const DeepCollectionEquality().hash(favoriteFruit)
      ]);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required String guid,
      required bool isOwner,
      String balance,
      String picture,
      int? age,
      String eyeColor,
      String name,
      String gender,
      String company,
      String email,
      String phone,
      String address,
      String about,
      String registered,
      double? latitude,
      double? longitude,
      List<String> tags,
      List<Friend> friends,
      String greeting,
      String favoriteFruit}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get guid;
  @override
  bool get isOwner;
  @override
  String get balance;
  @override
  String get picture;
  @override
  int? get age;
  @override
  String get eyeColor;
  @override
  String get name;
  @override
  String get gender;
  @override
  String get company;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get address;
  @override
  String get about;
  @override
  String get registered;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  List<String> get tags;
  @override
  List<Friend> get friends;
  @override
  String get greeting;
  @override
  String get favoriteFruit;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Friend _$FriendFromJson(Map<String, dynamic> json) {
  return _Friend.fromJson(json);
}

/// @nodoc
class _$FriendTearOff {
  const _$FriendTearOff();

  _Friend call({required int id, required String guid, String name = ''}) {
    return _Friend(
      id: id,
      guid: guid,
      name: name,
    );
  }

  Friend fromJson(Map<String, Object?> json) {
    return Friend.fromJson(json);
  }
}

/// @nodoc
const $Friend = _$FriendTearOff();

/// @nodoc
mixin _$Friend {
  int get id => throw _privateConstructorUsedError;
  String get guid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendCopyWith<Friend> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendCopyWith<$Res> {
  factory $FriendCopyWith(Friend value, $Res Function(Friend) then) =
      _$FriendCopyWithImpl<$Res>;
  $Res call({int id, String guid, String name});
}

/// @nodoc
class _$FriendCopyWithImpl<$Res> implements $FriendCopyWith<$Res> {
  _$FriendCopyWithImpl(this._value, this._then);

  final Friend _value;
  // ignore: unused_field
  final $Res Function(Friend) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? guid = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FriendCopyWith<$Res> implements $FriendCopyWith<$Res> {
  factory _$FriendCopyWith(_Friend value, $Res Function(_Friend) then) =
      __$FriendCopyWithImpl<$Res>;
  @override
  $Res call({int id, String guid, String name});
}

/// @nodoc
class __$FriendCopyWithImpl<$Res> extends _$FriendCopyWithImpl<$Res>
    implements _$FriendCopyWith<$Res> {
  __$FriendCopyWithImpl(_Friend _value, $Res Function(_Friend) _then)
      : super(_value, (v) => _then(v as _Friend));

  @override
  _Friend get _value => super._value as _Friend;

  @override
  $Res call({
    Object? id = freezed,
    Object? guid = freezed,
    Object? name = freezed,
  }) {
    return _then(_Friend(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Friend with DiagnosticableTreeMixin implements _Friend {
  const _$_Friend({required this.id, required this.guid, this.name = ''});

  factory _$_Friend.fromJson(Map<String, dynamic> json) =>
      _$$_FriendFromJson(json);

  @override
  final int id;
  @override
  final String guid;
  @JsonKey()
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Friend(id: $id, guid: $guid, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Friend'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('guid', guid))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Friend &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.guid, guid) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(guid),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$FriendCopyWith<_Friend> get copyWith =>
      __$FriendCopyWithImpl<_Friend>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendToJson(this);
  }
}

abstract class _Friend implements Friend {
  const factory _Friend({required int id, required String guid, String name}) =
      _$_Friend;

  factory _Friend.fromJson(Map<String, dynamic> json) = _$_Friend.fromJson;

  @override
  int get id;
  @override
  String get guid;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$FriendCopyWith<_Friend> get copyWith => throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users$Query$Users$Results _$Users$Query$Users$ResultsFromJson(
        Map<String, dynamic> json) =>
    Users$Query$Users$Results()
      ..id = json['id'] as int?
      ..firstName = json['first_name'] as String?
      ..lastName = json['last_name'] as String?
      ..isStaff = json['is_staff'] as bool?
      ..isSuperuser = json['is_superuser'] as bool?
      ..roles = json['roles'] as String?;

Map<String, dynamic> _$Users$Query$Users$ResultsToJson(
        Users$Query$Users$Results instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_staff': instance.isStaff,
      'is_superuser': instance.isSuperuser,
      'roles': instance.roles,
    };

Users$Query$Users _$Users$Query$UsersFromJson(Map<String, dynamic> json) =>
    Users$Query$Users()
      ..results = (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Users$Query$Users$Results.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Users$Query$UsersToJson(Users$Query$Users instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson()).toList(),
    };

Users$Query _$Users$QueryFromJson(Map<String, dynamic> json) => Users$Query()
  ..users = json['users'] == null
      ? null
      : Users$Query$Users.fromJson(json['users'] as Map<String, dynamic>);

Map<String, dynamic> _$Users$QueryToJson(Users$Query instance) =>
    <String, dynamic>{
      'users': instance.users?.toJson(),
    };

VerifyAccount$Mutation$VerifyAccount$Profile
    _$VerifyAccount$Mutation$VerifyAccount$ProfileFromJson(
            Map<String, dynamic> json) =>
        VerifyAccount$Mutation$VerifyAccount$Profile()
          ..id = json['id'] as int?
          ..firstName = json['first_name'] as String?
          ..lastName = json['last_name'] as String?
          ..rol = json['rol'] as String?
          ..gender = json['gender'] as String?;

Map<String, dynamic> _$VerifyAccount$Mutation$VerifyAccount$ProfileToJson(
        VerifyAccount$Mutation$VerifyAccount$Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'rol': instance.rol,
      'gender': instance.gender,
    };

VerifyAccount$Mutation$VerifyAccount
    _$VerifyAccount$Mutation$VerifyAccountFromJson(Map<String, dynamic> json) =>
        VerifyAccount$Mutation$VerifyAccount()
          ..profile = json['profile'] == null
              ? null
              : VerifyAccount$Mutation$VerifyAccount$Profile.fromJson(
                  json['profile'] as Map<String, dynamic>)
          ..token = json['token'] as String?;

Map<String, dynamic> _$VerifyAccount$Mutation$VerifyAccountToJson(
        VerifyAccount$Mutation$VerifyAccount instance) =>
    <String, dynamic>{
      'profile': instance.profile?.toJson(),
      'token': instance.token,
    };

VerifyAccount$Mutation _$VerifyAccount$MutationFromJson(
        Map<String, dynamic> json) =>
    VerifyAccount$Mutation()
      ..verifyAccount = json['verify_account'] == null
          ? null
          : VerifyAccount$Mutation$VerifyAccount.fromJson(
              json['verify_account'] as Map<String, dynamic>);

Map<String, dynamic> _$VerifyAccount$MutationToJson(
        VerifyAccount$Mutation instance) =>
    <String, dynamic>{
      'verify_account': instance.verifyAccount?.toJson(),
    };

TokenAuthEmail$Mutation$TokenAuth$Profile
    _$TokenAuthEmail$Mutation$TokenAuth$ProfileFromJson(
            Map<String, dynamic> json) =>
        TokenAuthEmail$Mutation$TokenAuth$Profile()
          ..id = json['id'] as int?
          ..firstName = json['first_name'] as String?
          ..lastName = json['last_name'] as String?
          ..rol = json['rol'] as String?
          ..gender = json['gender'] as String?;

Map<String, dynamic> _$TokenAuthEmail$Mutation$TokenAuth$ProfileToJson(
        TokenAuthEmail$Mutation$TokenAuth$Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'rol': instance.rol,
      'gender': instance.gender,
    };

TokenAuthEmail$Mutation$TokenAuth _$TokenAuthEmail$Mutation$TokenAuthFromJson(
        Map<String, dynamic> json) =>
    TokenAuthEmail$Mutation$TokenAuth()
      ..profile = json['profile'] == null
          ? null
          : TokenAuthEmail$Mutation$TokenAuth$Profile.fromJson(
              json['profile'] as Map<String, dynamic>)
      ..token = json['token'] as String?
      ..message = json['message'] as String?;

Map<String, dynamic> _$TokenAuthEmail$Mutation$TokenAuthToJson(
        TokenAuthEmail$Mutation$TokenAuth instance) =>
    <String, dynamic>{
      'profile': instance.profile?.toJson(),
      'token': instance.token,
      'message': instance.message,
    };

TokenAuthEmail$Mutation _$TokenAuthEmail$MutationFromJson(
        Map<String, dynamic> json) =>
    TokenAuthEmail$Mutation()
      ..tokenAuth = json['token_auth'] == null
          ? null
          : TokenAuthEmail$Mutation$TokenAuth.fromJson(
              json['token_auth'] as Map<String, dynamic>);

Map<String, dynamic> _$TokenAuthEmail$MutationToJson(
        TokenAuthEmail$Mutation instance) =>
    <String, dynamic>{
      'token_auth': instance.tokenAuth?.toJson(),
    };

UsersArguments _$UsersArgumentsFromJson(Map<String, dynamic> json) =>
    UsersArguments(
      password: json['password'] as String,
      email: json['email'] as String,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$UsersArgumentsToJson(UsersArguments instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'limit': instance.limit,
      'offset': instance.offset,
    };

VerifyAccountArguments _$VerifyAccountArgumentsFromJson(
        Map<String, dynamic> json) =>
    VerifyAccountArguments(
      token: json['token'] as String,
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$VerifyAccountArgumentsToJson(
        VerifyAccountArguments instance) =>
    <String, dynamic>{
      'token': instance.token,
      'platform': instance.platform,
    };

TokenAuthEmailArguments _$TokenAuthEmailArgumentsFromJson(
        Map<String, dynamic> json) =>
    TokenAuthEmailArguments(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$TokenAuthEmailArgumentsToJson(
        TokenAuthEmailArguments instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

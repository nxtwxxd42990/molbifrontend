// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..id = json['id'] as num
  ..name = json['name'] as String
  ..user = json['user'] as String
  ..password = json['password'] as String
  ..email = json['email'] as String
  ..description = json['description'] as String;

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user': instance.user,
      'password': instance.password,
      'email': instance.email,
      'description': instance.description,
    };

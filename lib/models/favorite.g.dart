// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Favorite _$FavoriteFromJson(Map<String, dynamic> json) => Favorite()
  ..id = json['id'] as num
  ..userId = UserIdFavorite.fromJson(json['userId'] as Map<String, dynamic>)
  ..productId =
      ProductIdFavorite.fromJson(json['productId'] as Map<String, dynamic>);

Map<String, dynamic> _$FavoriteToJson(Favorite instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'productId': instance.productId,
    };

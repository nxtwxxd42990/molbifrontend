import 'package:json_annotation/json_annotation.dart';
import "userIdFavorite.dart";
import "productIdFavorite.dart";
part 'favorite.g.dart';

@JsonSerializable()
class Favorite {
  Favorite();

  late num id;
  late UserIdFavorite userId;
  late ProductIdFavorite productId;
  
  factory Favorite.fromJson(Map<String,dynamic> json) => _$FavoriteFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteToJson(this);
}

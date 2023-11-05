import 'package:json_annotation/json_annotation.dart';

part 'userIdFavorite.g.dart';

@JsonSerializable()
class UserIdFavorite {
  UserIdFavorite();

  late num id;
  late String name;
  late String user;
  late String password;
  late String email;
  late String description;
  
  factory UserIdFavorite.fromJson(Map<String,dynamic> json) => _$UserIdFavoriteFromJson(json);
  Map<String, dynamic> toJson() => _$UserIdFavoriteToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'productIdFavorite.g.dart';

@JsonSerializable()
class ProductIdFavorite {
  ProductIdFavorite();

  late num id;
  late String name;
  late String cpu;
  late String mb;
  late String vga;
  late String ram;
  late String ssd;
  late String hdd;
  late String psu;
  late String cases;
  late String price;
  late String image;
  
  factory ProductIdFavorite.fromJson(Map<String,dynamic> json) => _$ProductIdFavoriteFromJson(json);
  Map<String, dynamic> toJson() => _$ProductIdFavoriteToJson(this);
}

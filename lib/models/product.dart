import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  Product();

  late String image;
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
  
  factory Product.fromJson(Map<String,dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

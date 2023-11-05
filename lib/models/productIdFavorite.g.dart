// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productIdFavorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductIdFavorite _$ProductIdFavoriteFromJson(Map<String, dynamic> json) =>
    ProductIdFavorite()
      ..id = json['id'] as num
      ..name = json['name'] as String
      ..cpu = json['cpu'] as String
      ..mb = json['mb'] as String
      ..vga = json['vga'] as String
      ..ram = json['ram'] as String
      ..ssd = json['ssd'] as String
      ..hdd = json['hdd'] as String
      ..psu = json['psu'] as String
      ..cases = json['cases'] as String
      ..price = json['price'] as String
      ..image = json['image'] as String;

Map<String, dynamic> _$ProductIdFavoriteToJson(ProductIdFavorite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cpu': instance.cpu,
      'mb': instance.mb,
      'vga': instance.vga,
      'ram': instance.ram,
      'ssd': instance.ssd,
      'hdd': instance.hdd,
      'psu': instance.psu,
      'cases': instance.cases,
      'price': instance.price,
      'image': instance.image,
    };

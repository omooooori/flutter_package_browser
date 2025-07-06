// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_details_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageDetailResult _$PackageDetailResultFromJson(Map<String, dynamic> json) =>
    _PackageDetailResult(
      description: json['description'] as String,
      publisherId: json['publisherId'] as String,
      versions: (json['versions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PackageDetailResultToJson(
  _PackageDetailResult instance,
) => <String, dynamic>{
  'description': instance.description,
  'publisherId': instance.publisherId,
  'versions': instance.versions,
};

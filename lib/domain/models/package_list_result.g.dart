// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_list_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageListResult _$PackageListResultFromJson(Map<String, dynamic> json) =>
    _PackageListResult(
      packages: (json['packages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nextUrl: json['nextUrl'] as String?,
    );

Map<String, dynamic> _$PackageListResultToJson(_PackageListResult instance) =>
    <String, dynamic>{
      'packages': instance.packages,
      'nextUrl': instance.nextUrl,
    };

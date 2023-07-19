// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth0_permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Auth0Permission _$Auth0PermissionFromJson(Map<String, dynamic> json) =>
    Auth0Permission(
      permissionName: json['permission_name'] as String,
      description: json['description'] as String,
      resourceServerName: json['resource_server_name'] as String,
      resourceServerIdentifier: json['resource_server_identifier'] as String,
      sources: (json['sources'] as List<dynamic>)
          .map((e) => Auth0PermissionSource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Auth0PermissionToJson(Auth0Permission instance) =>
    <String, dynamic>{
      'permission_name': instance.permissionName,
      'description': instance.description,
      'resource_server_name': instance.resourceServerName,
      'resource_server_identifier': instance.resourceServerIdentifier,
      'sources': instance.sources,
    };

Auth0PermissionSource _$Auth0PermissionSourceFromJson(
        Map<String, dynamic> json) =>
    Auth0PermissionSource(
      sourceId: json['source_id'] as String,
      sourceType: json['source_type'] as String,
      sourceName: json['source_name'] as String,
    );

Map<String, dynamic> _$Auth0PermissionSourceToJson(
        Auth0PermissionSource instance) =>
    <String, dynamic>{
      'source_id': instance.sourceId,
      'source_type': instance.sourceType,
      'source_name': instance.sourceName,
    };

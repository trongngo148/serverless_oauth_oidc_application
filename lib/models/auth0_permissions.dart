import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth0_permissions.g.dart';

class UserPermission {
  static const String delete = 'delete.user.message';
  static const String edit = 'edit.user.message';
  static const String upload = 'upload.attachments';
}

@JsonSerializable()
class Auth0Permission {
  Auth0Permission({required this.permissionName, required this.description, required this.resourceServerName, required this.resourceServerIdentifier, required this.sources});

  @JsonKey(name: 'permission_name')
  final String permissionName;

  final String description;

  @JsonKey(name: 'resource_server_name')
  final String resourceServerName;

  @JsonKey(name: 'resource_server_identifier')
  final String resourceServerIdentifier;

  final List<Auth0PermissionSource> sources;

  factory Auth0Permission.fromJson(Map<String, dynamic> json) => _$Auth0PermissionFromJson(json);

  Map<String, dynamic> toJson() => _$Auth0PermissionToJson(this);

  @override
  String toString() {
    return permissionName;
  }
}

@JsonSerializable()
class Auth0PermissionSource {
  Auth0PermissionSource({required this.sourceId, required this.sourceType, required this.sourceName});

  @JsonKey(name: 'source_id')
  final String sourceId;

  @JsonKey(name: 'source_type')
  final String sourceType;

  @JsonKey(name: 'source_name')
  final String sourceName;

  factory Auth0PermissionSource.fromJson(Map<String, dynamic> json) => _$Auth0PermissionSourceFromJson(json);

  Map<String, dynamic> toJson() => _$Auth0PermissionSourceToJson(this);

  @override
  String toString() {
    return '''
      sourceId: $sourceId,
      sourceName: $sourceName,
      sourceType: $sourceType
''';
  }
}

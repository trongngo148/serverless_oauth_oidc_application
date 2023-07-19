import 'package:json_annotation/json_annotation.dart';

part 'auth0_roles.g.dart';

enum Role {
  Employee,
  Amin,
  Customer
}

@JsonSerializable()
class Auth0Role {
  final String id;
  final Role name;
  final String description;

  Auth0Role({required this.id, required this.name, required this.description});

  factory Auth0Role.fromJson(Map<String, dynamic> json) => _$Auth0RoleFromJson(json);

  Map<String, dynamic> toJson() => _$Auth0RoleToJson(this);

  @override
  String toString() {
    return '''$name''';
  }
}

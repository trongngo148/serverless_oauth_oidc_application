import 'package:json_annotation/json_annotation.dart';

part 'auth0_user.g.dart';

@JsonSerializable()
class Auth0User {
  Auth0User({
    required this.nickname,
    required this.name,
    required this.email,
    required this.picture,
    required this.updatedAt,
    required this.sub,
  });

  final String nickname;
  final String name;
  final String email;
  final String picture;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final String sub;

  bool get hasImage => picture.isNotEmpty;
  String get id => sub.split('|').join('');

  factory Auth0User.fromJson(Map<String, dynamic> json) => _$Auth0UserFromJson(json);

  Map<String, dynamic> toJson() => _$Auth0UserToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'auth_dtos.g.dart';

@JsonSerializable()
class SignInBodyDTO {
  final String emailAddress;
  final String password;

  SignInBodyDTO({
    required this.emailAddress,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$SignInBodyDTOToJson(this);
}

@JsonSerializable()
class SignInResponseDTO {
  final String token;
  final String name;

  SignInResponseDTO({
    required this.token,
    required this.name,
  });

  factory SignInResponseDTO.fromJson(json) => _$SignInResponseDTOFromJson(json);
}

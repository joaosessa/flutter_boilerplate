import 'package:flutter_boilerplate/infrastructure/auth/auth_dtos.dart';

class UserModel {
  final String token;
  final String name;

  UserModel({
    required this.token,
    required this.name,
  });

  factory UserModel.fromDTO(SignInResponseDTO dto) {
    return UserModel(
      token: dto.token,
      name: dto.name,
    );
  }
}

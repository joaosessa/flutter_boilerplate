import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/domain/auth/i_auth_facade.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/user_model.dart';
import '../../domain/auth/value_objects.dart';
import 'auth_dtos.dart';

class AuthFacade implements IAuthFacade {
  @override
  Future<Either<AuthFailure, UserModel>> signIn({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      // get email address and password string
      final emailAddressStr = emailAddress.getOrCrash();
      final passwordStr = password.getOrCrash();

      // create request body
      SignInBodyDTO(
        emailAddress: emailAddressStr,
        password: passwordStr,
      );

      // fake api request
      await Future.delayed(const Duration(seconds: 1));

      // if login dosent match throw exception
      if (emailAddressStr != 'admin@email.com' || passwordStr != 'admin') {
        throw Exception();
      }

      // else fake response
      final response = {
        'token': '123',
        'name': 'Joao',
      };

      // create response dto from json
      final responseDTO = SignInResponseDTO.fromJson(response);

      // create user from dto
      final user = UserModel.fromDTO(responseDTO);

      // return user
      return right(user);
    } catch (err) {
      return left(InvalidEmailAddressAndPasswordCombination());
    }
  }
}

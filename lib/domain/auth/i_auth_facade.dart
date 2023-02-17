import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/domain/auth/auth_failure.dart';

import 'user_model.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, UserModel>> signIn({
    required EmailAddress emailAddress,
    required Password password,
  });
}

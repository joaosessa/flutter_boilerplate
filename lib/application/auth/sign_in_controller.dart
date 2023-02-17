import 'package:flutter_boilerplate/application/auth/user_store.dart';
import 'package:flutter_boilerplate/infrastructure/auth/auth_facade.dart';
import 'package:mobx/mobx.dart';

import '../../domain/auth/value_objects.dart';

part 'sign_in_controller.g.dart';

class SignInController extends _SignInController with _$SignInController {
  static SignInController? _instance;

  SignInController._();

  static SignInController get instance {
    _instance ??= SignInController._();

    return _instance!;
  }

  void dispose() {
    _instance = null;
  }
}

abstract class _SignInController with Store {
  @observable
  var emailAddress = EmailAddress('');

  @observable
  var password = Password('');

  @observable
  bool isPasswordVisible = false;

  @observable
  bool showErrorMessage = false;

  @observable
  bool isLoading = false;

  @action
  void setEmailAddress(String input) => emailAddress = EmailAddress(input);

  @action
  void setPassword(String input) => password = Password(input);

  @action
  void togglePasswordVisibility() => isPasswordVisible = !isPasswordVisible;

  @action
  Future<void> signIn() async {
    if (emailAddress.isValid() && password.isValid()) {
      final authFacade = AuthFacade();

      isLoading = true;

      final user = await authFacade.signIn(
        emailAddress: emailAddress,
        password: password,
      );

      isLoading = false;

      final userStore = UserStore.instance;

      user.fold(
        (l) => null,
        (r) => userStore.setUser(r),
      );
    } else {
      showErrorMessage = true;
    }
  }
}

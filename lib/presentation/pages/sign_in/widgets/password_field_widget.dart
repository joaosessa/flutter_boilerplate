import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../application/auth/sign_in_controller.dart';
import '../../../shared/widgets/text_field_widget.dart';

class PasswordFieldWidget extends StatelessWidget {
  final signInStore = SignInController.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: TextFieldWidget(
            onChanged: signInStore.setPassword,
            labelText: 'Password',
            errorText: signInStore.showErrorMessage
                ? signInStore.password.getFailureMessage()
                : null,
            obscureText: !signInStore.isPasswordVisible,
            suffixIcon: IconButton(
              onPressed: signInStore.togglePasswordVisibility,
              icon: Icon(
                signInStore.isPasswordVisible
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: Colors.grey,
              ),
            ),
          ),
        );
      },
    );
  }
}

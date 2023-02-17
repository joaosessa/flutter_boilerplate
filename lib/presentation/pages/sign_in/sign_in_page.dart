import 'package:flutter/material.dart';

import '../../../application/auth/sign_in_controller.dart';
import 'widgets/password_field_widget.dart';
import 'widgets/submit_button_widget.dart';
import 'widgets/email_address_field_widget.dart';

class SignInPage extends StatelessWidget {
  final signInStore = SignInController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                EmailAddressFieldWidget(),
                const SizedBox(height: 16),
                PasswordFieldWidget(),
                const SizedBox(height: 16),
                SubmitButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../application/auth/sign_in_controller.dart';
import '../../../shared/widgets/text_field_widget.dart';

class EmailAddressFieldWidget extends StatelessWidget {
  final signInStore = SignInController.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: TextFieldWidget(
            onChanged: signInStore.setEmailAddress,
            labelText: 'Email address',
            errorText: signInStore.showErrorMessage
                ? signInStore.emailAddress.getFailureMessage()
                : null,
          ),
        );
      },
    );
  }
}

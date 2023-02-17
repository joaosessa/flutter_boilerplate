import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../application/auth/sign_in_controller.dart';

class SubmitButtonWidget extends StatelessWidget {
  final signInStore = SignInController.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (signInStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return SizedBox(
          height: 36,
          child: ElevatedButton(
            onPressed: signInStore.signIn,
            child: const Text('Sign in'),
          ),
        );
      },
    );
  }
}

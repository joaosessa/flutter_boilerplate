// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignInController on _SignInController, Store {
  late final _$emailAddressAtom =
      Atom(name: '_SignInController.emailAddress', context: context);

  @override
  EmailAddress get emailAddress {
    _$emailAddressAtom.reportRead();
    return super.emailAddress;
  }

  @override
  set emailAddress(EmailAddress value) {
    _$emailAddressAtom.reportWrite(value, super.emailAddress, () {
      super.emailAddress = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_SignInController.password', context: context);

  @override
  Password get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(Password value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$isPasswordVisibleAtom =
      Atom(name: '_SignInController.isPasswordVisible', context: context);

  @override
  bool get isPasswordVisible {
    _$isPasswordVisibleAtom.reportRead();
    return super.isPasswordVisible;
  }

  @override
  set isPasswordVisible(bool value) {
    _$isPasswordVisibleAtom.reportWrite(value, super.isPasswordVisible, () {
      super.isPasswordVisible = value;
    });
  }

  late final _$showErrorMessageAtom =
      Atom(name: '_SignInController.showErrorMessage', context: context);

  @override
  bool get showErrorMessage {
    _$showErrorMessageAtom.reportRead();
    return super.showErrorMessage;
  }

  @override
  set showErrorMessage(bool value) {
    _$showErrorMessageAtom.reportWrite(value, super.showErrorMessage, () {
      super.showErrorMessage = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_SignInController.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$signInAsyncAction =
      AsyncAction('_SignInController.signIn', context: context);

  @override
  Future<void> signIn() {
    return _$signInAsyncAction.run(() => super.signIn());
  }

  late final _$_SignInControllerActionController =
      ActionController(name: '_SignInController', context: context);

  @override
  void setEmailAddress(String input) {
    final _$actionInfo = _$_SignInControllerActionController.startAction(
        name: '_SignInController.setEmailAddress');
    try {
      return super.setEmailAddress(input);
    } finally {
      _$_SignInControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String input) {
    final _$actionInfo = _$_SignInControllerActionController.startAction(
        name: '_SignInController.setPassword');
    try {
      return super.setPassword(input);
    } finally {
      _$_SignInControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_SignInControllerActionController.startAction(
        name: '_SignInController.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_SignInControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emailAddress: ${emailAddress},
password: ${password},
isPasswordVisible: ${isPasswordVisible},
showErrorMessage: ${showErrorMessage},
isLoading: ${isLoading}
    ''';
  }
}

import 'package:mobx/mobx.dart';

import '../../domain/auth/user_model.dart';

part 'user_store.g.dart';

class UserStore extends _UserStore with _$UserStore {
  static UserStore? _instance;

  UserStore._();

  static UserStore get instance {
    _instance ??= UserStore._();

    return _instance!;
  }

  void dispose() {
    _instance = null;
  }
}

abstract class _UserStore with Store {
  @observable
  UserModel? user;

  @action
  void setUser(UserModel user) {
    this.user = user;
  }
}

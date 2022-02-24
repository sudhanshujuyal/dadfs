import 'package:uuid/uuid.dart';

import '../model/user.dart';


class UserRepository {
  User? _user;

  User? getUser()  {
    print('user');
    if (_user != null) return _user;
    return _user = User(const Uuid().v4());

  }
}
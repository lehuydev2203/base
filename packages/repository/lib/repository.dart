import 'package:repository/repositories/card.dart';

import 'repositories/auth.dart';
import 'repositories/home.dart';

class Repository {
  static final AuthRepositories auth = AuthRepositories();
  static final HomeRepositories home = HomeRepositories();
  static final CardRepositories card = CardRepositories();

}

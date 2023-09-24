import 'package:flutter_base/services/card/card_service.dart';
import 'package:flutter_base/services/home/home_services.dart';

import 'auth/auth_service.dart';
import 'service_base.dart';

class Services {
  static final ServiceBase base = ServiceBase();
  static final AuthService auth = AuthService();
  static final HomeService home = HomeService();
  static final CardService card = CardService();
}

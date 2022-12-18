import 'package:factory_methods/transport/interface/i_transport.dart';
import 'package:factory_methods/transport/ship.dart';

import 'interface/i_logistics.dart';

class SeaLogistic extends Logistic {
  @override
  ITransport createTransport() {
    return Ship();
  }
}

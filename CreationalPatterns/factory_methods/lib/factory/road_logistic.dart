import 'package:factory_methods/transport/interface/i_transport.dart';
import 'package:factory_methods/transport/truck.dart';

import 'interface/i_logistics.dart';

class RoadLogistic extends Logistic {
  @override
  ITransport createTransport() {
    return Truck();
  }
}

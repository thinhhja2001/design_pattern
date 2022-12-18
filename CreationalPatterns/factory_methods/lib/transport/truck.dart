import 'package:factory_methods/transport/interface/i_transport.dart';

class Truck extends ITransport {
  @override
  void deliver() {
    print("Deliver cargo by land");
  }
}

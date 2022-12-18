import 'package:factory_methods/transport/interface/i_transport.dart';

class Ship extends ITransport {
  @override
  void deliver() {
    print('Deliver cargo by sea');
  }
}

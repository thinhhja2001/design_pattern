import 'package:abstract_factory_methods/animal/four_legs_animal.dart';

import 'interface/i_animal.dart';

class Cat extends FourLegsAnimal {
  @override
  String getName() {
    return "I am a Cat";
  }
}

import 'package:abstract_factory_methods/animal/four_legs_animal.dart';

class Dog extends FourLegsAnimal {
  @override
  String getName() {
    return "I am a Dog";
  }
}

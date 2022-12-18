import 'package:abstract_factory_methods/animal/two_legs_animal.dart';

class Duck extends TwoLegsAnimal {
  @override
  String getName() {
    return "I am a Duck";
  }
}

import 'dart:math';

import 'package:abstract_factory_methods/abstract_animal_factory/four_legs_animal_factory.dart';
import 'package:abstract_factory_methods/abstract_animal_factory/two_legs_animal_factory.dart';
import 'package:abstract_factory_methods/factory/interface/i_animal_factory.dart';

void main(List<String> arguments) {
  IAnimalFactory factory;

  Random random = Random();
  int type = random.nextInt(2);
  if (type == 0) {
    factory = FourLegsAnimalFactory();
  } else {
    factory = TwoLegsAnimalFactory();
  }
  print(factory.createAnimal().getName());
  print(factory.createAnimal().getName());
  print(factory.createAnimal().getName());
  print(factory.createAnimal().getName());
  print(factory.createAnimal().getName());
}

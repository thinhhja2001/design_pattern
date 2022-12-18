import 'dart:math';

import 'package:abstract_factory_methods/abstract_animal_factory/abstract_animal_factory.dart';
import 'package:abstract_factory_methods/animal/interface/i_animal.dart';

import '../animal/cat.dart';
import '../animal/dog.dart';

class FourLegsAnimalFactory extends AbstractAnimalFactory {
  @override
  IAnimal createAnimal() {
    Random random = Random();
    int type = random.nextInt(2);
    if (type == 0) {
      return Dog();
    } else {
      return Cat();
    }
  }
}

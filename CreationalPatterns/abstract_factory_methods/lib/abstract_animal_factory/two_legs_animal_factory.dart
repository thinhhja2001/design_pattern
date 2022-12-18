import 'dart:math';

import 'package:abstract_factory_methods/abstract_animal_factory/abstract_animal_factory.dart';
import 'package:abstract_factory_methods/animal/chicken.dart';
import 'package:abstract_factory_methods/animal/duck.dart';
import 'package:abstract_factory_methods/animal/interface/i_animal.dart';

class TwoLegsAnimalFactory extends AbstractAnimalFactory {
  @override
  IAnimal createAnimal() {
    Random random = Random();
    int type = random.nextInt(2);
    if (type == 0) {
      return Chicken();
    } else {
      return Duck();
    }
  }
}

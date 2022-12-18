import 'dart:math';

import '../animal/cat.dart';
import '../animal/dog.dart';
import '../animal/duck.dart';
import '../animal/interface/i_animal.dart';
import 'interface/i_animal_factory.dart';

class RandomAnimalFactory extends IAnimalFactory {
  @override
  IAnimal createAnimal() {
    Random random = Random();
    int type = random.nextInt(3);
    if (type == 0) {
      return Dog();
    } else if (type == 1) {
      return Cat();
    } else {
      return Duck();
    }
  }
}

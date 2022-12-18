import '../animal/cat.dart';
import '../animal/dog.dart';
import '../animal/duck.dart';
import '../animal/interface/i_animal.dart';
import 'interface/i_animal_factory.dart';

class BasicAnimalFactory extends IAnimalFactory {
  BasicAnimalFactory();
  int index = 0;
  @override
  IAnimal createAnimal() {
    if (index == 0) {
      index++;
      return Dog();
    } else if (index == 1) {
      index++;
      return Cat();
    } else {
      index = 0;
      return Duck();
    }
  }
}

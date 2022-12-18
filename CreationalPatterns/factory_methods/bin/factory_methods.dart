import 'dart:math';

import 'package:factory_methods/factory/interface/i_logistics.dart';
import 'package:factory_methods/factory/road_logistic.dart';
import 'package:factory_methods/factory/sea_logistic.dart';

void main(List<String> arguments) {
  Logistic logistic;

  Random random = Random();

  ///Suppose we will need to create 12 transport
  for (var i = 0; i < 12; i++) {
    int type = random.nextInt(2);
    //If type is equal to 0, we will create a RoadLogistic
    //If type is equal to 1, we will create a SeaLogistic
    if (type == 0) {
      logistic = RoadLogistic();
    } else {
      logistic = SeaLogistic();
    }
    logistic.createTransport().deliver();
  }
}

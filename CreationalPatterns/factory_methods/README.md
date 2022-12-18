FactoryMethods

Factory methods is a creational design pattern that provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created

# Problem

Imagine that you are operating a shipment company (Tex Express for example). At first, you only have **Truck** for transportation. So it means that all your code lives inside the **Truck** class.

Year after year, your company becomes more popular. So you decide to add **Ship** as an alternative choice for shipment. Great new? But the problem here is that most of your code are already in **Truck** class. Adding new transportation means you will have to make changes to the entire codebase. Moreover, if you want to add a new shipment (By motorbike for example), you will probably need to make all of these changes again.

# Solution

The Factory Methods patterns suggest that you replace direct object construction call with a calls to a special _factory_ method. The object you want to create will still be created. But via the _factory_ method. Objects returned by a factory method are often referred to as _products_

![alt text](https://refactoring.guru/images/patterns/diagrams/factory-method/solution1.png)

_Subclasses can alter the class of objects returned by a factory method_

At first glance, this change may look pointless. Because we just moved the constructor call from one part of the program to another. But now, you can override the factory method in subclasses and change the class of products being created by the methods.

One slight limitation of this design pattern is that: Subclasses may return different types of products only if these products have a common base class or interface. Also, the factory method in the base should have its return type declared as this interface.

![alt text](https://refactoring.guru/images/patterns/diagrams/factory-method/solution2-en.png)

For example, both **Truck** and **Ship** should be implemented the **Transport** interface, which have a method called **deliver**. Each class implement this method differently. **Truck** deliver cargo by land whereas **Ship** deliver cargo by sea.

The Factory method in the **RoadLogistics** class return truck objects, whereas **SeaLogistics** return ships.

The code that uses the factory method (often called the client code) doesn't see the difference between the actual product returned by various subclasses. The client treats all the products as abstract **Transport**. The client knows that all transport objects are supposed to have the **deliver** method, but how it work isn't important to the client.

# Implementation

We will have ITransport interface

`i_transport.dart`

```dart
abstract class ITransport {
  void deliver();
}
```

Both **Truck** and **Ship** will extend this interface

`truck.dart`

```dart
class Truck extends ITransport {
  @override
  void deliver() {
    print("Deliver cargo by land");
  }
}
```

`ship.dart`

```dart
class Ship extends ITransport {
  @override
  void deliver() {
    print('Deliver cargo by sea');
  }
}
```

Now, let's create the Logistic factory method.

`i_logistic.dart`

```dart
abstract class Logistic {
  ITransport createTransport();
}
```

The Logistic factory method will have the **createTransport** method which will returned a new transportation type.

Your company will have two types of transportation: By sea or by road. The **RoadLogistics** will return a new **Truck** whereas the **SeaLogistics** will return a new **Ship**.

`road_logistic.dart`

```dart
class RoadLogistic extends Logistic {
  @override
  ITransport createTransport() {
    return Truck();
  }
}
```

`sea_logistic.dart`

```dart
class SeaLogistic extends Logistic {
  @override
  ITransport createTransport() {
    return Ship();
  }
}
```

Now, let's suppose the **main.dart** file is our client code. We will have:

```dart
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
```
As you can see here, the client will treats all the products as abstract __Transport__. The client knows that all transport will have the __deliver__ method, but exactly how it work for each type of transport, the client doesn't need to know.

After running the `main.dart` file, you will have the result
![alt text](https://i.ibb.co/PM6JdDs/image.png)

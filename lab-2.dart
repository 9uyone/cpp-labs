void main() {
  var dog = Dog("Шарик", "кістка");
  var cat = Cat("Мурчик", 2);

  dog.printInfo();
  cat.printInfo();
  cat.incrementSleepHours();
  cat.printInfo();
}

abstract class Pet {
  final String name;
  
  Pet(this.name);
  
  void printInfo();
}

class Dog extends Pet {
  String favoriteToy;
  
  Dog(String name, this.favoriteToy) : super(name);
  
  @override
  void printInfo() {
    print("Собака на ім'я $name, улюблена іграшка якого - $favoriteToy");
  }
}

class Cat extends Pet {
  int hoursSleeped = 0;
  
  Cat(String name, this.hoursSleeped) : super(name);
  
  @override
  void printInfo() {
    print("Кіт на ім'я $name, який проспав $hoursSleeped год");
  }
  
  void incrementSleepHours() {
    hoursSleeped++;
  }
}

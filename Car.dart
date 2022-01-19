void main() {
  var audi = new Car('audi', 's', 40, Driver(fio: 'Oleg', exp: 10),
      Engine(manufacturer: "sony", performance: 100));
  audi.printCarSettings();
}

class Engine {
  double performance;
  String manufacturer;

  Engine({required this.manufacturer, required this.performance});
}

class Driver {
  String fio;
  double exp;

  Driver({required this.fio, required this.exp});
}

class Car {
  String? brand;
  String? status;
  double? weight;
  Driver? driver;
  Engine? motor;

  start() {
    print('Поехали');
  }

  stop() {
    print('Останавливаемся');
  }

  turnLeft() {
    print('Поворот налево');
  }

  turnRight() {
    print('поворот направо');
  }

  printCarSettings() {
    print('Марка автомобиля: ${this.brand}\nКласс автомобиля: ${this.status}\nВес автомобиля: ${this.weight} т\nВодитель ${driver?.fio}\nМотор от ${motor?.manufacturer}');
  }

  Car(String brand, String status, double weight, Driver driver, Engine motor);
}

class Lorry extends Car {
  double? carrying;

  Lorry(String brand, String status, double weight, Driver driver, Engine motor)
      : super(brand, status, weight, driver, motor);
}

class SportCar extends Car {
  double? maxSpeed;

  SportCar(
      String brand, String status, double weight, Driver driver, Engine motor)
      : super(brand, status, weight, driver, motor);
}

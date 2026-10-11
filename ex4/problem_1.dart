abstract class Vehicle {
  double fuelConsumption();
}
class Car extends Vehicle {
  double litersPer100Km;
  Car(this.litersPer100Km);
  @override
  double fuelConsumption() => litersPer100Km;
}
class Motorcycle extends Vehicle {
  double litersPer100Km;
  Motorcycle(this.litersPer100Km);
  @override
  double fuelConsumption() => litersPer100Km;
}
double totalConsumption(List<Vehicle> vehicles, double distance) {
  double total = 0;
  for (var vehicle in vehicles) {
    total += (vehicle.fuelConsumption() * distance) / 100;
  }
  return total;
}
void main() {
  List<Vehicle> fleet = [Car(8.5), Motorcycle(4.0)];
  double total = totalConsumption(fleet, 250);
  print('Endhanur vareliqi caxsy: $total litr');
}

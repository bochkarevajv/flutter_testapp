class Car{
double speed = 40;
String name = "Volga";

void toPrint(){
  print("speed = $speed ,\n name = $name \n");
}
}

void registered({double speed1 = 40, String name1 = "Volga",
  double speed2 = 150, String name2 = "Honda",
  double speed3 = 200, String name3 = "BMW"}){
  Car newCar1 = Car();
  newCar1.speed = speed1;
  newCar1.name = name1;

  Car newCar2 = Car();
  newCar2.speed = speed2;
  newCar2.name = name2;

  Car newCar3 = Car();
  newCar3.speed = speed3;
  newCar3.name = name3;

  newCar1.toPrint();
  newCar2.toPrint();
  newCar3.toPrint();
}

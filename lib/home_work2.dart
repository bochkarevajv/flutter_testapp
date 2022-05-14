class Car{
double speed = 40;
String name = "Volga";

void toPrint1(){
  print("speed = $speed");
  print("name = $name");
}

void toPrint2(){
  print("  speed = $speed\n  name = $name");
}
}


void registered({double speed1 = 40,String name1 = "Volga",
  double speed2 = 150, String name2 = "Honda"}){
  Car newCar1 = Car();
  newCar1.speed = speed1;
  newCar1.name = name1;

  Car newCar2 = Car();
  newCar2.speed = speed2;
  newCar2.name = name2;


  print("Машина 1 - скорость $speed1, марка $name1");
  print("Машина 2 - скорость $speed2, марка $name2");
}

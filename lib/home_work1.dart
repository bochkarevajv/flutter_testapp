void main () {
  registered(String n, int s) {
    Car x = Car();
    x.name = n;
    x.speed = s;
    x.toPrint();
  }
  registered('Volga', 40);
}
  class Car{
    String name = 'underfined';
    int speed = 0;
    void toPrint (){
      print('Name = $name, speed = $speed');

  }
}

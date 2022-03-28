import 'dart:convert';

import 'dart:html';

import 'dart:math';

class A  {


  int? _private;

  int? a;
  int b = 1;

  A(this._private,{

    this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.e,
    required this.f,
});

  final int c;

  late int d;
  late final int e;

  late final int f;
  static int g = 6;
  static late int h;
  static late int i = 8;
  static late final int j;
  static const int k = 10;

  @override
  String toString() => 'A(private : $_private, a: $a, b: $b, c: $c, d: $d, e: $e, f: $f)';





}

void main(List<String> arguments) {
  var alfa = A(1,
      a: 2, b : 3, c: 4, d: 5, e: 6, f: 7);

  print('Alfa----> $alfa');
  var alfaZero = B.zero();
  var alfaFromJson = B.fromJson(json: {'x' : 5, 'y': 10});
  var alfaZeroX = B.zeroX(y: 5);
  var alfaZeroY = B.zeroY(x: 5);
  print('AlfaZero----> $alfaZero');
  print('AlfaFromJson----> $alfaFromJson');
  print('AlfaZeroX----> $alfaZeroX');
  print('AlfaZeroX----> $alfaZeroY');

  var p1 = const Point(x: 1, y: 1);
  var p2 = const Point(x: 1, y: 1);
  identical(p1, p2);

  print('identical(p1, p2) --> ${identical(p1, p2)}');

  var randomNegative = Point.random(isPositive: false);
  var randomPositive = Point.random(isPositive: true);
  print('Random negative ---> $randomNegative');
  print('Random positive ---> $randomPositive');

  Singleton s1 = Singleton();
  Singleton s2 = Singleton();

  ConstantClass c1 = const ConstantClass();
  ConstantClass c2 = const ConstantClass();

  identical(s1,s2);
  print('identical(s1,s2) --> ${identical(s1, s2)}');
  identical(c1,c2);
  print('identical(c1,c2) --> ${identical(c1, c2)}');

  Duck duck = Duck("Munchkin");
  print('duck.name ----> ${duck.name}');
  print('Who is duck--> ${duck.whatAmI}');

  UserRepository userRepository = UserRepository();
  userRepository.create();
  userRepository.read();
  userRepository.update();
  userRepository.delete();


}

class B {

  B({
    required this.x,
    required this.y,
});

  final int x; 
  final int y;

  B.zero() : x = 0, y= 0;

  B.fromJson({required Map<String, dynamic>json}): x = json["x"]!, y = json['y']!;

  B.zeroX({required int y}) : this(x:0, y:y);
  B.zeroY({required int x}) : this(y:0, x: x);


  @override
  String toString() => 'A(x: $x, y: $y)';




}


class Point {

  const Point({
    required this.x,
    required this.y,
});

  final int x;
  final int y;

  static const Point origin = Point(x: 0, y: 0);

  factory Point.random({required bool isPositive}) {
    int minNegativeValue = -99;
    int maxNegativeValue = -1;
    int minPositiveValue = 1;
    int maxPositiveValue = 99;

    int randomNegativeValue = minNegativeValue + Random().nextInt(maxNegativeValue + minNegativeValue);
    int randomPositiveValue = minPositiveValue + Random().nextInt(maxPositiveValue - minPositiveValue);
    
    
   return isPositive
    ? Point(x: randomPositiveValue, y: randomPositiveValue)
    : Point(x: randomNegativeValue, y: randomNegativeValue);
  }

  factory Point.explanation() => Point.origin;

  num distanceTo(Point p) {
    var dx = x - p.x;
    var dy = y - p.y;
    return sqrt(pow(dx,2) + pow(dy,2));


  }

  int get sum => x + y;
  int get diff => x - y;



  @override
  String toString() => 'Point(x: $x, y : $y)';




}

class Singleton {
  Singleton._privateConstructor();
  static final _instance = Singleton._privateConstructor();
  factory Singleton() => _instance;
}

class ConstantClass {
  const ConstantClass();
}


abstract class UserRepositoryInterface {
  late final List<int> userList;

  void create();
  List<int> read();
  void update();
  void delete();

}


class UserRepository implements UserRepositoryInterface {
  @override
  late final List<int> userList;

  UserRepository() {
    userList = read();
  }

  @override
  void create() => print('Created');

  @override
  void delete() => print('Deleted');

  @override
  List<int> read() => [1,2,3,4,5];

  @override
  void update() => print('Updated');




}

class Animal {

  final String name;

  Animal({required this.name});

  void whatAmI() => print('I\'m animal');
  void chase(Animal a) {}
}

class Bird extends Animal {
  Bird(String name) : super(name: name);

}

class Duck extends Bird {
  Duck(String name) : super(name);
  @override
  void whatAmI() => print("I'm a duck!");
  void swim() {}
}

class Mouse extends Animal {
  Mouse() : super(name: 'Jerry');

}

class Cat extends Animal {
  Cat() : super(name: 'Tom');
  @override
  void chase(covariant Mouse m) {}



}







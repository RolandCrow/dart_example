void main(List<String> arguments) {
  var list =
  ['hello', 'everyone', 'wap'].map((String s) => s.toUpperCase()).toList();

  print(list);


  requiredPositional(0, 1);
  optionalPositional(12);
  requiredNamed(b: 20, a: 30);
  optionalNamed(b: 20);
  optionalNamed(b: 10, a: 20);
  namedHybrid(a: 20);

  var car = makeCar("BMW");
  print(car('M5'));

  var a = A();
  a();
  A()();


}

  void requiredPositional(int a, int b) => print('$a $b');
  void optionalPositional([int a = 5, int? b]) => print('$a $b');
  void requiredNamed({required int b, required int a}) => print('$a, $b');
  void optionalNamed({int a = 5, required int b}) => print('$a, $b');
  void namedHybrid({required int a, int b = 10}) => print('$a, $b');

  void mixOfParams(int a, int b, [int c = 5]) => print("$a, $b, $c");

  String Function(String) makeCar(String make) {
    var engine = '4.4 V8';
    return (model) => '$make $model $engine';

  }

  class A {
    void call() => print('I am function ');
}

  






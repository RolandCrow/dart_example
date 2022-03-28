void main(List<String> arguments) {



  String s = '5';

  int integer = int.parse(s);
  double d = double.parse(s);
  num n = num.parse(s);
  print("$integer, $d, $n");

  String s1 = integer.toString();
  String s2 = d.toString();
  String s3 = n.toString();

  int clampedIntOutput = integer.clamp(0,1); // значение между заданными числами
  double clampedDoubleOutput = d.clamp(0.0, 5.5);
  num clampedNumOutput = n.clamp(0.0, 10);
  print("$clampedIntOutput, $clampedDoubleOutput, $clampedNumOutput");

  d = 14.6;

  int ceiledValue = d.ceil();
  int flooredValue = d.floor();
  int roundValue = d.round();
  print("'''Ceil of $d $ceiledValue\nFloor of $d $flooredValue\n of $d: $roundValue'''" );

  int a = 3;
  int b = 2;
  var c = a ~/ b;


  print(c);

  List<int> list = [1,2,3];
  print(list[0]);
  print(list.length - 1);

  List<bool> boolean = [true, false, true];
  List<A> listOfObjects = [A(), A(), A()];

  List<dynamic> listOfIntegerAndDouble = [2, 3.0, 5];
  List<Object?> complexList = [2,3.0, 5, "gggg", false, null];

  List<int> one = [1];
  List<int> two = [...one];

  List<int> list2 = [1,0,2]..sort()..reversed.toList()
    ..addAll([5,4,3])..sort()
          ..map((e) => e + 1).toList();

  print(list2);

  var aa = [1,2,3];
  var bb = [3,4,5];
  var cc = [...aa, ...bb];
  print(cc);

  bool salesActive = true;
  var salesMenu = [
    'Offers1',
    'Offers2'
  ];

  List<String> menu = [
    'Home',
    'Store',
    'About',
    'Search',
    if(salesActive)
      for (var item in salesMenu) item
  ];

  print(menu);

  
  var set = <int> {};

  set.add(1);
  set.add(2);
  set.add(3);
  set.add(4);
  print(set);

  Set<String> set1 = {'Hello', 'Wall'};
  print(set1);


  var set2 = {10, 11, 12, ...set1, if(true) set};

  print(set2);

  var set11 = {1,2,3};
  var set22 = {2,3,4};


  var intersect = set11.intersection(set22);
  var union = set11.union(set22);
  var difference = set11.difference(set22);

  print(intersect);
  print(union);
  print(difference);

  var map = {1:1, 2:2, 3:3};
  map.addEntries([MapEntry(4, 4)]);

  var map2 = {...map};
  print(map2);








  var functionObject = first;
  second(functionObject, 5);

}

int first(int a) {
  return a;
}

void second(int Function(int) f, int a) {
  print(f.call(a));
  print(f(a));

}

class A {

}


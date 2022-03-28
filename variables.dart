void main(List<String> arguments) {


  final list3 = [1,2,3];
  list3.add(4);
  
  final alfa = A();
  alfa.a = 10;
  print(alfa);
  
  var c1 = const C(list: [1,2,3]);
  var c2 = const C(list: [1,2,3]);

}

class C {
 final List<int> list;

  const C({
    required this.list
});
}

class A {
  set a(int a) {}
}
  








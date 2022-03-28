
import 'dart:math' as math;
import 'package:equatable/equatable.dart';

void main(List<String> arguments) {


  int a = 7;
  int b = 2;


  var c = a / b;
  print(c);


  var i = a ~/b;
  var r = a % b;

  print('7/2 = $i r $r');
  print('$i * 2 + $r = 7');

  var aa = 5;


  var a1 = aa++; // 5
  print(a1);

  var a2 = ++a; // 7 увеличило до 6 уже до подсчета
  print(a2);

  var list1 = [1,2,3];
  var list2 = [1,2,3];

  print(list1 == list2); //  false ссылки на разные объекты

  print(identical(list1, list2)); // false

  var b1 = const A(1,2);
  var b2 = const A(1,2);
  
  print('b1 == b2: ${a1 == a2}');
  print('identical(a1,a2) : ${identical(b1, b2)}'); // все тру из-за экьютабл


  var list = [1, 2.0, 'test', null]..forEach((element) {

    if(element is int){
      print('$element if is of int type');
      print(element.isEven);
    } else if(element is double) {
      print('$element is of double type');
    } else if(element is String) {
      print('$element is of String type');
    } else {
      print('$element is of Null type');
    }
  });


}

class A extends Equatable {
    final int a;
    final int b;
    
    const A(this.a, this.b);
    

  @override
  List<Object?> get props => [a,b];
    
    
}
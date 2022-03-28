void main(List<String> arguments) {

  1.luckyInteger;
  print('1.lucky integer --> ${1.luckyInteger}');

  10.add15();
  print('10.add15() --> ${10.add15()}');
  


}

extension IntegerExtension on int {
  int get luckyInteger => 12;
  int add15() => this + 15;
}


void main(List<String> arguments) {


  int a = 5;

  a.isEven ? print('$a is even!') : print('$a is not even');
  var list = [1,2,3,4,5];
  var list1 = [1,2,3,4,5].where((element) => element != 1)..forEach(print);


  for(var i = 0; i< list.length; i++) {
    if(list[i] == 3) {
      break;
    } else {
      print(list[i]);
    }

  }
  for(var item in list) {
    if(list[item] != 1) {
      continue;
    }
    print(item);
  }

  int i = 0;

  while(i < 0) {
    i++;
    print(i);
  }

  i = 0;

  do {
    i++;
    print(i);
  } while(i < 0);


  var condition = Condition.sunny;
  switch(condition) {
    case Condition.sunny:
      print('It/s sunny');
      break;
    case Condition.cloudy:
      print('It/s cloudy');
      break;
    case Condition.drizzly:
      print('It/s drizzly');
      break;
    case Condition.rainy:
      print('It/s rainy!');
      break;
    default:
      print('Unknown weather');

  }



}

enum Condition { sunny, cloudy, drizzly, rainy}


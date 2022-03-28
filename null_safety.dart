class Coffee {

  String? _temperature;

  void heat() {_temperature = 'hot';}
  void chill() {_temperature = 'iced';}

  void checkTemp() {
      if(_temperature != null) {
        print('Ready to serve' + _temperature! + '!');
      }
  }

  String serve() => _temperature! + 'coffee';

}

int tracingFibonacci(int n) {
  final int result;

  if(n < 2) {
    result = n;
  } else {
    return  tracingFibonacci(n-2)  + tracingFibonacci(n - 1);
  }
  print(result);
  return result;

}

String makeCommand(String executable, [List<String>? arguments]) {

  var result = executable;

  if(arguments != null) {
    result += ' ' + arguments.join(' ');
  }
  return result;



}

class HttpResponse {

  final int code;
  final String? error;

  HttpResponse.ok() : code = 200,
                      error = null;

  HttpResponse.notFound() : code = 404,
                            error = 'Not found';

  @override
  String toString() {
    if(code == 200) return 'Ok';
    return 'Error $code ${error!.toUpperCase()}';
  }


}

class Car {

  late int speed;

  void accelerate() {
    speed = 50;
  }

  void brake() {
    speed = 0;
  }

  int steer() => speed = speed - 15;

}

int readThermometer() => 25;

class Weather {
  late int temperature = readThermometer();
}

void positionalMandatory(int a, int b) {}
void positionalOptional([int? a, int? b]) {}
void namedMandatory({required int a, required int b}) {}
void namedOptional({int a = 4, int b = 10}) {}

void main(List<String> arguments) {
  var car = Car();
  car.accelerate();

  car.steer();


  var w = Weather();
  print(w.temperature + 25);

  positionalMandatory(2, 3);
  positionalOptional(null, 3);
  namedMandatory(a: 2, b: 3);
  namedOptional(a:2, b:3);


}


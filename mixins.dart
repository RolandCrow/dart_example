void main(List<String> arguments) {

  Musician musician = Musician();
  musician.playDrums();
  musician.playGuitar();
  musician.perform(); //guitar 


}

class Performer {


  void perform() => print('Performs!');



}

mixin Guitarist {

  void playGuitar() => print('Playing the guitar');
  void perform() => playGuitar();


}

mixin Drummer {
  void playDrums() => print('Playing the drums');
  void perform() => playDrums();


}

class Musician extends Performer with Guitarist, Drummer {


}
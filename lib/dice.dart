import 'dart:math';

abstract class Dice{
  int _nbrfaces;
  int _resfaces = 0;

  Dice(this._nbrfaces);

  int getFaces(){
    return this._nbrfaces;
  }

  int getResult(){
    return this._resfaces;
  }

  //la fonction lancer m'a été expliqué par Nathan
  void Lancer() {
    Random random = new Random();
    this._resfaces = random.nextInt(_nbrfaces)+1;
  }
}
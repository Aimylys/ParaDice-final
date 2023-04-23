import 'myhomepage.dart';
import 'dice.dart';
import 'dart:math';

abstract class DicePool {
  List<Dice> _lesdices = [];
  List<int> _lesresults = [];

  DicePool() {
    addDice();
  }

  List<Dice> getLesDices() {
    return this._lesdices;
  }

  List<int> getLesResultats() {
    return this._lesresults;
  }

  void resetDice() {
    _lesdices.removeRange(0, _lesdices.length - 1); //on a plus que 1 seul dé dans la liste de dés
  }

  void addDice();

  void addDice10() {
    for (var i = 1; i < 10; i++) {
      // pour i=1 jusque i<10->rajouter +1 à i
      addDice(); //remove les dés à l'indice 0 jusque 9 si le nbr de dés est sup à 10
    }
  }

  void removeDice1() {
    _lesdices.removeAt(0);
  }

  void removeDice10() {
    if (_lesdices.length > 10) {
      _lesdices.removeRange(0, 9); //remove les dés à l'indice 0 jusque 9 si le nbr de dés est sup à 10
    }
  }

  double CalculMoyenne() {
    double moyenne = 0;

    for (var i = 0; i < _lesresults.length; i++) {
      moyenne = moyenne + _lesresults[i] * (i + 1);
    }
    return moyenne / _lesdices.length;
  }

  List<Dice> Resultat() {
    return _lesdices;
  }

  //tanguy pour m'avoir épinglé d'utilisé une List.generate
  //fct qui genere un tableau composé de plusieurs 0 de la taille du nombre de faces que contient le dés
  void reset() {
    _lesresults = List.generate(_lesdices[0].getFaces(), (index) => 0);
  }

  //tanguy pour l'idée de la boucle for
  //fct qui lance plusieurs dés,lis les résultats et le met dans le tableau déjà trier(nbr de 1...ect)
  void lancerlesDes() {
    reset(); // cela remet à 0 le tableau
    for (Dice i in _lesdices) {
      i.Lancer();
      int valeur = i.getResult(); //met dans la variable valeur le résultat de la face
      _lesresults[valeur - 1]++; //trie dans le tableau en fct des faces
    }
  }
}

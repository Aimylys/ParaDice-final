import 'dicepool.dart';
import 'dice6.dart';

class DicePool6 extends DicePool {
  DicePool6() : super();

  @override
  //sur cette méthode c'est Thomas qui m'a aidé notamment dans l'idée de créer une fonction Resultat sur mon dicepool de base pour pouvoir la réutiliser et donc pour ne pas mettre mon dicepool6 en astract.
  //mais il y a aussi Jonathan qui m'a conseillé de mettre mon .add ici pour spécifié combien de face à mon dés que je veux ajouter.
  void addDice() {
    Resultat().add(Dice6());
  }
}

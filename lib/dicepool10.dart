import 'dicepool.dart';
import 'dice10.dart';

class DicePool10 extends DicePool {
  DicePool10() : super();

  @override
  void addDice() {
    Resultat().add(Dice10());
  }
}

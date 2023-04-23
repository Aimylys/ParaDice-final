import 'dicepool.dart';
import 'dice20.dart';

class DicePool20 extends DicePool {
  DicePool20() : super();

  @override
  void addDice() {
    Resultat().add(Dice20());
  }
}

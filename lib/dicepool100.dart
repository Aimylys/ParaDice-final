import 'dicepool.dart';
import 'dice100.dart';

class DicePool100 extends DicePool {
  DicePool100() : super();

  @override
  void addDice() {
    Resultat().add(Dice100());
  }
}

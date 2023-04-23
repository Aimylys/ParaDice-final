import 'package:flutter/material.dart';
import 'dicepool.dart';
import 'dicepool100.dart';
import 'dicepool20.dart';
import 'dicepool10.dart';
import 'dicepool6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParaDice',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Paradice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  DicePool _dicepool = new DicePool6(); //tas de dés de types tas de dés 6
  double _moyenne = 0;
  //tanguy
  List<int> _resultatLancer = [0, 0, 0, 0, 0, 0];

  void d6() {
    setState(() {
      _counter = 1;
      _moyenne = 0;
      _dicepool = new DicePool6();
      _dicepool.reset();
      _resultatLancer = _dicepool.getLesResultats();
    });
  }

  void d10() {
    setState(() {
      _counter = 1;
      _moyenne = 0;
      _dicepool = new DicePool10();
      _dicepool.reset();
      _resultatLancer = _dicepool.getLesResultats();
    });
  }

  void d20() {
    setState(() {
      _counter = 1;
      _moyenne = 0;
      _dicepool = new DicePool20();
      _dicepool.reset();
      _resultatLancer = _dicepool.getLesResultats();
    });
  }

  void d100() {
    setState(() {
      _counter = 1;
      _moyenne = 0;
      _dicepool = new DicePool100();
      _dicepool.reset();
      _resultatLancer = _dicepool.getLesResultats();
    });
  }

  void m10() {
    setState(() {
      if (_counter > 10) {
        _counter = _counter - 10;
        _dicepool.removeDice10();
      }
      if (_counter < 11) {
        _counter = 1;
        _dicepool.resetDice();
      }
    });
  }

  void m1() {
    setState(() {
      if (_counter > 1) {
        _counter = _counter - 1;
        _dicepool.removeDice1();
      }
      if (_counter < 1) {
        _counter = 1;
        _dicepool.resetDice();
      }
    });
  }

  void reset() {
    setState(() {
      _counter = 1;
      _moyenne = 0;
      _dicepool.resetDice();
      _dicepool.CalculMoyenne();
      _resultatLancer = _dicepool.getLesResultats();
    });
  }

  void p1() {
    setState(() {
      _counter = _counter + 1;
      _dicepool.addDice();
    });
  }

  void p10() {
    setState(() {
      _counter = _counter + 10;
      _dicepool.addDice10();
    });
  }

  void lancer() {
    setState(() {
      _dicepool.lancerlesDes();
      _resultatLancer = _dicepool.getLesResultats();
      _moyenne = _dicepool.CalculMoyenne();
    });
  }

//tanguy pour m'avoir dirigé vers la solution d'utilisé modulo
  List<Widget> clnimp() {
    List<Widget> cln = [];
    for (int i = 0; i < _resultatLancer.length; i++) {
      if (i % 2 == 1) {
        int y = i + 1;
        cln.add(Text(
          'Nombre de $y :' + _resultatLancer[i].toString(),
          style: TextStyle(color: Colors.orange, fontSize: 20),
        ));
      }
    }
    return cln;
  }

  List<Widget> clnpair() {
    List<Widget> cln = [];
    for (int i = 0; i < _resultatLancer.length; i++) {
      if (i % 2 == 0) {
        int y = i + 1;
        cln.add(Text(
          'Nombre de $y :' + _resultatLancer[i].toString(),
          style: TextStyle(color: Colors.orange, fontSize: 20),
        ));
      }
    }
    return cln;
  }

  @override
  Widget build(BuildContext context) {
    _dicepool.reset();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          //tristan qui m'a aidé à inséré une image via assets
          Container(
            color: Colors.green,
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset('assets/images/paradice_logo.png', fit: BoxFit.cover, width: 300),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              OutlinedButton(onPressed: d6, child: const Text("D6")),
              OutlinedButton(onPressed: d10, child: const Text("D10")),
              OutlinedButton(onPressed: d20, child: const Text("D20")),
              OutlinedButton(onPressed: d100, child: const Text("D100")),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              OutlinedButton(onPressed: m10, child: const Text("-10")),
              OutlinedButton(onPressed: m1, child: const Text("-1")),
              OutlinedButton(onPressed: reset, child: const Text("Reset")),
              OutlinedButton(onPressed: p1, child: const Text("+1")),
              OutlinedButton(onPressed: p10, child: const Text("+10")),
            ]),
          ),
          const Text(
            'Combien voulez vous de dés ?',
            style: TextStyle(color: Colors.green, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          Text(
            '$_counter',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(children: clnpair()),
                Column(children: clnimp()),
              ],
            ),
          ),
          const Text(
            'Moyenne des dés : ',
            style: TextStyle(color: Colors.green, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          Text(
            _moyenne.toString(),
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: lancer,
        tooltip: 'Lancer Dés',
        child: const Icon(Icons.casino),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

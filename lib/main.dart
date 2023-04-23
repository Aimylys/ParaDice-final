import 'package:flutter/material.dart';
import 'myhomepage.dart';

import 'firstpage.dart';
import 'secondpage.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParaDice',
      //tanguy m'a donné le moyen d'effacer la banderole qui se trouvais en haut à droite
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenPage(title: 'ParaDice'),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => SplashScreenPage(title: 'Home'),
        '/route2': (BuildContext context) => MyHomePage(title: 'Dés Def'),
        '/route3': (BuildContext context) => SecondPage(title: 'Dés Perso'),
      },
    );
  }
}

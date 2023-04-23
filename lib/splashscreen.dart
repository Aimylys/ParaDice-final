import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_application_2test/firstpage.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key, required this.title});

  final String title;

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePageState())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        margin: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/paradice_logo.png', fit: BoxFit.cover, width: 300),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircularProgressIndicator(color: Colors.white),
              ],
            )
          ],
        ));
  }
}

class HomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: <Widget>[
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
              padding: const EdgeInsets.only(top: 70),
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                const Text(
                  'Home ParaDice',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ])),
          const Padding(padding: EdgeInsets.only(bottom: 25)),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/route2');
              },
              child: const Text("Lancer de dés(6/10/20/100)"),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.green))),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/route3');
            },
            child: const Text("Lancer de dés personnalisés"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}

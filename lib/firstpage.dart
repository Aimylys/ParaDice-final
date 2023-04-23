/*import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
} */

/* class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
} */

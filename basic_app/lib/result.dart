import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final String title;
  final int result;
  final Function reset;

  Result({required this.title, required this.result, required this.reset});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(title, style: const TextStyle(fontSize: 20)),
      Text('Your score is: $result',
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
      RaisedButton(child: const Text("Reset"), onPressed: () => reset())
    ]));
  }
}

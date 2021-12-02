import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Flutter Buttons"),
            ),
            body: Center(
                child: Column(
              children: [
                RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: const Text("Old Raised Button"),
                    onPressed: () => {print('Raised Button')}),
                FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () => {print('OldFlat Button')},
                    child: const Text("Flat Butoon")),
                OutlineButton(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    textColor: Colors.deepOrange,
                    onPressed: () => {print('Old Outline Button')},
                    child: const Text("Outline Butoon")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange, onPrimary: Colors.white),
                    onPressed: () => {print('New ElevatedButton')},
                    child: const Text("New Elevated Butoon")),
                TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.orange),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () => {print('New TextButton')},
                    child: const Text("New Text Butoon")),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(primary: Colors.blue,side: const BorderSide(color:Colors.red)),
                    onPressed: () => {print('New TextButton')},
                    child: const Text("New Text Butoon")),
              ],
            ))));
  }
}

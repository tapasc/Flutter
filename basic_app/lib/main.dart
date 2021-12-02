import "package:flutter/material.dart";

import "./quiz.dart";
import "./result.dart";

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App();

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  final List _myQuestions = const <Map>[
    {
      'questionText': "Is IDE is the best?",
      'answers': [
        {'text': 'VSCode', 'score': 10},
        {'text': 'Intellij', 'score': 10},
        {'text': 'Sublime', 'score': 10}
      ]
    },
    {
      'questionText': "where do you stay?",
      'answers': [
        {'text': 'Delhi', 'score': 10},
        {'text': 'Nagpur', 'score': 10},
        {'text': 'Pune', 'score': 10},
        {'text': 'U.P', 'score': 10},
        {'text': 'Lucknow', 'score': 10}
      ]
    },
    {
      'questionText': "where is TajMahal Located?",
      'answers': [
        {'text': 'Agra', 'score': 10},
        {'text': 'Punjab', 'score': 1},
        {'text': 'Shimla', 'score': 2}
      ]
    },
    {
      'questionText': "Who is father of the nation?",
      'answers': [
        {'text': 'Mohandas', 'score': 5},
        {'text': 'Rani', 'score': 1},
        {'text': 'Gandhi', 'score': 3}
      ]
    },
  ];
  int _questionIndex = 0;
  int _score = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Dreams')),
            body: (_questionIndex < _myQuestions.length)
                ? Quiz(
                    questions: _myQuestions,
                    clickHandler: () => _updateQuestion,
                    qIndex: _questionIndex)
                : Result(
                    title: "You are done !!",
                    result: _score,
                    reset: resetQuiz)));
  }

  void _updateQuestion(int score) {
    setState(
        () => {_questionIndex = _questionIndex + 1, _score = _score + score});
  }

  void resetQuiz() {
    setState(() => {_questionIndex = 0, _score = 0});
  }
}

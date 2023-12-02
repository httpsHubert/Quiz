import 'package:flutter/material.dart';
import 'package:quiz_app/content.dart';
import 'package:quiz_app/questions_screen.dart';

class QuizContainer extends StatefulWidget {
  const QuizContainer({super.key});

  @override
  State<QuizContainer> createState() {
    return _QuizContainerState();
  }
}

class _QuizContainerState extends State<QuizContainer> {
  final List<String> correctAnswers = [];
  String activeScreen = "start-screen";

  void changeScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == "questions-screen"
        ? const QuestionsScreen()
        : StartScreen(changeScreen);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 23, 0, 80),
              Color.fromARGB(255, 22, 0, 94)
            ],
          )),
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}

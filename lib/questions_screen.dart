import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import "questions.dart";
import "package:google_fonts/google_fonts.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  //TODO EKRAN Z POPRAWNYMI ODPOWIEDZIAMI I ZMIENNA PRZECHOWUJACA DOBRA ODPOWIEDZ

  void answerQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        currentQuestionIndex =
            0; //TYLKO TYMCZASOWO ABY NIE WYWALALO BLEDU WYJSCIA POZA INDEX TABLICY
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffledAnswers().map((item) =>
              AnswerButton(answerText: item, onClick: answerQuestion)),
        ],
      ),
    );
  }
}

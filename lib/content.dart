import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/quiz-logo.png",
            width: 300, color: const Color.fromARGB(150, 255, 255, 255)),
        const SizedBox(
          height: 75,
        ),
        Text(
          "Learn Flutter the easiest way",
          style: GoogleFonts.lato(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(12),
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const StyledText("Start Quiz", 20, Colors.white),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 89, 235, 81)
            : const Color.fromARGB(255, 230, 137, 137),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        (questionIndex + 1).toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 1, 9, 32),
        ),
      ),
    );
  }
}

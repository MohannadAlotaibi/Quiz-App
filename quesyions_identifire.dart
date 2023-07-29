import 'package:flutter/material.dart';

class QuestionIdentifire extends StatelessWidget {
  const QuestionIdentifire(this.IsCorrect, this.QuestionIndex, {super.key});
  final int QuestionIndex;
  final bool IsCorrect;
  @override
  Widget build(BuildContext context) {
    final QuesNum = QuestionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: IsCorrect ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        QuesNum.toString(),
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 43, 40, 40)),
      ),
    );
  }
}

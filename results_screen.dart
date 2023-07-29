import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.OnRestart, this.chosenAnswer, {super.key});
  final List<String> chosenAnswer;
  final void Function() OnRestart;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> Summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      Summary.add(
        {
          "question_index": i,
          "question": questions[i].text,
          "correctAnswer": questions[i].answers[0],
          "User_answer": chosenAnswer[i],
        },
      );
    }

    return Summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final numTotalQuestions = questions.length;
    final numCorrectAns = summaryData.where((data) {
      return data['correctAnswer'] == data['User_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectAns out Of $numTotalQuestions  questioons correctly!",
              style: const TextStyle(
                color: Color.fromARGB(157, 254, 254, 254),
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            TextButton.icon(
                onPressed: OnRestart,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.refresh_outlined),
                label: const Text("Restart Quiz")),
          ],
        ),
      ),
    );
  }
}

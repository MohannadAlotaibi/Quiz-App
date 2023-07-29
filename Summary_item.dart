import 'package:adv_basics/quesyions_identifire.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final IsCorrect = itemData['User_answer'] == itemData['correctAnswer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifire(IsCorrect, itemData['question_index'] as int),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['User_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 158, 187, 230),
                  ),
                ),
                Text(
                  itemData['correctAnswer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 150, 233, 208),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

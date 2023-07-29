import 'package:flutter/widgets.dart';

import 'Summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.SummaryData, {super.key});

  final List<Map<String, Object>> SummaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: SummaryData.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}

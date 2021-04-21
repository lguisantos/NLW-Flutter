import 'package:flutter/material.dart';
import 'package:nlw/challenge/widgets/answer.dart';
import 'package:nlw/core/app_text_styles.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  QuizWidget({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title, style: AppTextStyles.heading),
          SizedBox(height: 24),
          AnswerWidget(
            isRight: false,
            isSelected: false,
            title:
                "Possibilita a criação de aplicativos compilados nativamente!",
          ),
          AnswerWidget(
            isRight: false,
            isSelected: false,
            title:
                "Possibilita a criação de aplicativos compilados nativamente!",
          ),
          AnswerWidget(
            isRight: false,
            isSelected: true,
            title:
                "Possibilita a criação de aplicativos compilados nativamente!",
          ),
          AnswerWidget(
            isRight: false,
            isSelected: false,
            title:
                "Possibilita a criação de aplicativos compilados nativamente!",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nlw/challenge/widgets/question_indicator.dart';
import 'package:nlw/challenge/widgets/quiz.dart';

class ChallengePageWidget extends StatefulWidget {
  @override
  _ChallengePageWidgetState createState() => _ChallengePageWidgetState();
}

class _ChallengePageWidgetState extends State<ChallengePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: SafeArea(top: true, child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(title: "O que o flutter faz em sua totalidade?"),
    );
  }
}

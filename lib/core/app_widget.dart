import 'package:flutter/material.dart';
import 'package:nlw/challenge/challenge_page.dart';
import 'package:nlw/home/home_page.dart';
import 'package:nlw/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: ChallengePageWidget(),
    );
  }
}
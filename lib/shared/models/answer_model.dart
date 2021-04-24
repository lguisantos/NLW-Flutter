import 'package:flutter/cupertino.dart';

class AnswerModel {
  final String title;
  final bool isRight;

  AnswerModel({@required this.title, this.isRight = false});
}

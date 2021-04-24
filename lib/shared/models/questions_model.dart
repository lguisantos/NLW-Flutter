import 'package:flutter/cupertino.dart';
import 'package:nlw/shared/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({
    @required this.title,
    @required this.answers,
  }) :
        /*
        Garantindo que o usuário está enviado 4 respostas para cada questão
      */
        assert(answers.length == 4);
}

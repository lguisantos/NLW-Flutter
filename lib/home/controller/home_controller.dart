import 'package:flutter/cupertino.dart';
import 'package:nlw/core/app_images.dart';
import 'package:nlw/shared/models/answer_model.dart';
import 'package:nlw/shared/models/questions_model.dart';
import 'package:nlw/shared/models/quiz_model.dart';
import 'package:nlw/shared/models/user_model.dart';

import 'home_state.dart';

class HomeController {
  
  // criando uma variável para gerencia de estado
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel user;
  List<QuizModel> quizzes;

  void getUser() async {
    state = HomeState.loading;
      user = UserModel(
        name: "Lucas Guimarães Santos",
        photoUrl: "https://avatars.githubusercontent.com/u/52330088?v=4");
    state = HomeState.success;
  }

  void getQuizzes() {
    state = HomeState.loading;
    quizzes = [
      QuizModel(
        image: AppImages.blocks,
        level: Level.facil,
        title: "Sobre Flutter",
        questionAnswered: 1,
        questions: [
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          )
        ],
      ),
      QuizModel(
        image: AppImages.blocks,
        level: Level.facil,
        title: "NLW 5 JavaScript",
        questionAnswered: 2,
        questions: [
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          ),
        ],
      ),
      QuizModel(
        image: AppImages.blocks,
        level: Level.facil,
        title: "NLW 5 Elixir",
        questionAnswered: 0,
        questions: [
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          ),
        ],
      ),
      QuizModel(
        image: AppImages.blocks,
        level: Level.facil,
        title: "NLW 5 Java",
        questionAnswered: 0,
        questions: [
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          ),
        ],
      ),
      QuizModel(
        image: AppImages.blocks,
        level: Level.facil,
        title: "NLW 5 ABAP",
        questionAnswered: 0,
        questions: [
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          ),
        ],
      ),
      QuizModel(
        image: AppImages.blocks,
        level: Level.facil,
        title: "NLW 5 HANA",
        questionAnswered: 0,
        questions: [
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          ),
        ],
      ),
      QuizModel(
        image: AppImages.blocks,
        level: Level.facil,
        title: "NLW 5 UI5",
        questionAnswered: 0,
        questions: [
          QuestionModel(
            title: "Para que serve o Flutter",
            answers: [
              AnswerModel(title: "Desenvolvimento IOS", isRight: false),
              AnswerModel(title: "Desenvolvimento Android", isRight: false),
              AnswerModel(title: "Desenvolvimento Web", isRight: true),
              AnswerModel(
                  title: "Desenvolvimento Multiplataforma", isRight: true),
            ],
          ),
        ],
      ),
    ];

    state = HomeState.success;
  }
}

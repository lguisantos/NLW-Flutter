import 'package:flutter/material.dart';
import 'package:nlw/core/app_colors.dart';
import 'package:nlw/home/controller/home_controller.dart';
import 'package:nlw/home/controller/home_state.dart';
import 'package:nlw/home/widgets/level_button/level_button.dart';
import 'package:nlw/home/widgets/quiz_card/quiz_card.dart';
import 'widgets/appbar/app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();

    /**
     * Criando evento que vai ficar 
     * monitorando mudanças para atualização da tela
     * */
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(label: "Fácil"),
                  LevelButtonWidget(label: "Médio"),
                  LevelButtonWidget(label: "Difícil"),
                  LevelButtonWidget(label: "Perito"),
                ],
              ),
              SizedBox(height: 24),
              Expanded(
                child: GridView.count(
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: controller.quizzes
                        .map((e) => QuizCardWidget(
                            title: e.title,
                            completed:
                                '${e.questionAnswered}/${e.questions.length}',
                            percent: e.questionAnswered / e.questions.length))
                        .toList()),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
          ),
        ),
      );
    }
  }
}

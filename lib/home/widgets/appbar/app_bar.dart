import 'package:flutter/material.dart';
import 'package:nlw/core/app_gradients.dart';
import 'package:nlw/core/app_text_styles.dart';
import 'package:nlw/home/widgets/scorebar/score_bar.dart';
import 'package:nlw/shared/models/user_model.dart';

//Criando app_bar personalizada
class AppBarWidget extends PreferredSize {
  final UserModel user;

  AppBarWidget({@required this.user})
      : super(
          preferredSize: Size.fromHeight(280),
          child: Container(
            height: 270,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "Olá, ",
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                  text: user.name,
                                  style: AppTextStyles.titleBold),
                            ],
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(user.photoUrl),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1.0),
                  child: ScoreCardWidget(),
                ),
              ],
            ),
          ),
        );
}

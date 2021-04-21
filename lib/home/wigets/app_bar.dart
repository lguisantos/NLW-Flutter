import 'package:flutter/material.dart';
import 'package:nlw/core/app_gradients.dart';
import 'package:nlw/core/app_text_styles.dart';

//Criando app_bar personalizada
class AppBarWiget extends PreferredSize {
  AppBarWiget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
                height: 250,
                decoration: BoxDecoration(gradient: AppGradients.linear),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Olá, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                                text: "Lucas!", style: AppTextStyles.titleBold),
                          ],
                        ),
                      ),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/52330088?v=4"),
                          ),
                        ),
                      )
                    ],
                  ),
                )));
}

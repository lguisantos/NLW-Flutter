import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nlw/core/app_colors.dart';
import 'package:nlw/core/app_text_styles.dart';
import 'package:nlw/home/widgets/chart/chart.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Row(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: ChartWidget()),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Vamos lá!",
                          style: AppTextStyles.heading,
                        ),
                      ),
                      Text(
                        "Complete os desafios e avance em conhecimento!",
                        style: AppTextStyles.body,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

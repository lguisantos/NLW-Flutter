import 'package:flutter/material.dart';
import 'package:nlw/core/app_text_styles.dart';
import 'package:nlw/shared/progress_indicator/progress_indicator.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Question 04", style: AppTextStyles.body),
              Text("de 10", style: AppTextStyles.body),
            ],
          ),
          SizedBox(height: 20),
          ProgressIndicatorWidget(value: 0.5)
        ],
      ),
    );
  }
}

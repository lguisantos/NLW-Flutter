import 'package:flutter/material.dart';
import 'package:nlw/core/app_colors.dart';
import 'package:nlw/core/app_text_styles.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      child: Padding(
        padding: EdgeInsets.only(left: 8),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 75,
                height: 75,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: 0.75,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                ),
              ),
            ),
            Center(
              child: Text(
                "75%",
                style: AppTextStyles.heading,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

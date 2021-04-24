import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nlw/core/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color border;
  final Color overlay;
  final VoidCallback onTap;

  NextButtonWidget({
    @required this.label,
    @required this.backgroundColor,
    @required this.fontColor,
    @required this.border,
    @required this.overlay,
    @required this.onTap,
  });

///Podemos criar os botões de 2 formas, com gets (como já fizemos) ou com construtores nomeados

  NextButtonWidget.green({@required String label, @required VoidCallback onTap})
      : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.label = label,
        this.border = AppColors.darkGreen,
        this.overlay = AppColors.green,
        this.onTap = onTap;

  NextButtonWidget.gray({@required String label, @required VoidCallback onTap})
      : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.label = label,
        this.border = AppColors.border,
        this.overlay = Colors.grey[200],
        this.onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(overlay),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            side: MaterialStateProperty.all(BorderSide(color: border))),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}

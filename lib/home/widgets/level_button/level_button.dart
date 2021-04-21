import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nlw/core/app_colors.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  // Criando uma validação para o construtor
  LevelButtonWidget({@required this.label})
      : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label));

  //Criando atribuição de estilo dinâmico
  final config = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil,
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio,
    },
    "Difícil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil,
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    }
  };

  Color get color => config[label]["color"];
  Color get borderColor => config[label]["borderColor"];
  Color get fontColor => config[label]["fontColor"];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
          border: Border.fromBorderSide(
            BorderSide(color: borderColor),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 6),
          child: Text(
            label,
            style: GoogleFonts.notoSans(
                color: fontColor, fontSize: 13),
          ),
        ));
  }
}
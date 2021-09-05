import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:landing_page/utils/helpers/style.dart';

class MainText extends StatelessWidget {
  final bool? isCentered;
  final double? fontSize;

  const MainText({Key? key, this.isCentered = false, this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
        children: [
          TextSpan(text: 'Envíanos tu '),
          TextSpan(
            text: 'feedback ',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(text: 'con mejoras para nuestra '),
          TextSpan(
            text: 'app ',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(text: 'ingresando tus '),
          TextSpan(
            text: 'datos ',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(text: 'en el siguiente '),
          TextSpan(
            text: 'formulario.',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w300,
          fontSize: fontSize,
          height: 1.5,
        ),
      ),
      textAlign: isCentered! ? TextAlign.center : TextAlign.start,
      stepGranularity: 1,
      maxLines: 3,
    );
  }
}

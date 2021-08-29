import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:landing_page/utils/helpers/style.dart';

class MainSubtitle extends StatelessWidget {
  final bool? isCentered;
  final double? fontSize;

  const MainSubtitle({Key? key, this.isCentered = false, this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
        children: [
          TextSpan(text: 'Generar tus '),
          TextSpan(
            text: 'requerimientos ',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: 'nunca fue tan '),
          TextSpan(
            text: 'fácil ',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: 'y '),
          TextSpan(
            text: 'sencillo.',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.normal,
          fontSize: fontSize,
        ),
      ),
      textAlign: isCentered! ? TextAlign.center : TextAlign.start,
      stepGranularity: 1,
      maxLines: 3,
    );
  }
}

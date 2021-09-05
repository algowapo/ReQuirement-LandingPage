import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final double? fontSize;
  final bool? isCentered;

  const MainTitle({Key? key, this.fontSize, this.isCentered = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      'Ayúdanos a mejorar',
      style: GoogleFonts.montserrat(
        color: Colors.black87,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
      textAlign: isCentered! ? TextAlign.center : TextAlign.start,
      minFontSize: 40,
      stepGranularity: 1,
      maxLines: 2,
    );
  }
}

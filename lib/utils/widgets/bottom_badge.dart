import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BottomBadge extends StatelessWidget {
  final String? mainText;
  final String? secondaryText;
  final String? iconRoute;
  final double? iconWidth;
  final double? containerWidth;
  final double? lineHeight;

  const BottomBadge(
      {Key? key,
      this.mainText,
      this.secondaryText,
      this.iconRoute,
      this.iconWidth,
      this.containerWidth,
      this.lineHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Image.asset(
              iconRoute!,
              width: iconWidth,
            ),
          ),
          Container(
            width: containerWidth,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: AutoSizeText(
              mainText!,
              style: GoogleFonts.montserrat(
                fontSize: screenSize.height / 35,
                fontWeight: FontWeight.bold,
              ),
              minFontSize: 20,
              stepGranularity: 1,
              maxLines: 2,
            ),
          ),
          Container(
            width: containerWidth,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: AutoSizeText(
              secondaryText!,
              style: GoogleFonts.montserrat(
                fontSize: screenSize.height / 100,
                fontWeight: FontWeight.normal,
                color: Color(0xFF99a1ad),
                height: lineHeight,
              ),
              minFontSize: 16,
              stepGranularity: 1,
            ),
          ),
        ],
      ),
    );
  }
}

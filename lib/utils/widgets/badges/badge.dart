import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Badge extends StatelessWidget {
  final String? mainText;
  final String? secondaryText;
  final String? iconRoute;
  final double? iconWidth;
  final double? containerWidth;
  final double? lineHeight;
  final bool? isCentered;

  const Badge({
    Key? key,
    this.mainText,
    this.secondaryText,
    this.iconRoute,
    this.iconWidth,
    this.containerWidth,
    this.lineHeight,
    this.isCentered = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment:
            isCentered! ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SvgPicture.asset(
              iconRoute!,
              width: iconWidth,
            ),
          ),
          Container(
            width: containerWidth,
            alignment: isCentered! ? Alignment.center : Alignment.centerLeft,
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: AutoSizeText(
              mainText!,
              style: GoogleFonts.montserrat(
                fontSize: screenSize.height / 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: isCentered! ? TextAlign.center : TextAlign.start,
              minFontSize: 20,
              stepGranularity: 1,
              maxLines: 2,
            ),
          ),
          Container(
            width: containerWidth,
            alignment: isCentered! ? Alignment.center : Alignment.centerLeft,
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
              textAlign: isCentered! ? TextAlign.center : TextAlign.start,
              minFontSize: 16,
              stepGranularity: 1,
            ),
          ),
        ],
      ),
    );
  }
}

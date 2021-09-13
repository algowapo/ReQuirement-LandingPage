import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:landing_page/utils/helpers/style.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomText extends StatelessWidget {
  final double? lineHeight;
  final bool? isCentered;
  final double? containerWidth;
  const BottomText(
      {Key? key, this.lineHeight, this.isCentered = false, this.containerWidth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment:
            isCentered! ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'Obtén early access',
            style: GoogleFonts.montserrat(
              color: Colors.black87,
              fontSize: screenSize.height * .04,
              fontWeight: FontWeight.bold,
            ),
            textAlign: isCentered! ? TextAlign.center : TextAlign.start,
            minFontSize: 25,
            maxLines: 3,
          ),
          SizedBox(
            height: 30,
          ),
          AutoSizeText(
            'Inscríbete al waitlist para ser de los primeros en probar ReQuirement',
            style: GoogleFonts.montserrat(
              color: Color(0xFF99a1ad),
              fontSize: screenSize.height * .02,
              fontWeight: FontWeight.w400,
            ),
            textAlign: isCentered! ? TextAlign.center : TextAlign.start,
            maxLines: 3,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: containerWidth!,
            constraints: BoxConstraints(maxWidth: containerWidth!),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: gray),
            ),
            child: SizedBox(
              width: containerWidth!,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      constraints:
                          BoxConstraints(maxWidth: containerWidth! * .35),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email_outlined,
                          ),
                          hintStyle: GoogleFonts.montserrat(
                            color: gray,
                            fontWeight: FontWeight.w300,
                          ),
                          hintText: 'Email',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          tooltip: 'Empieza ya',
                          color: Colors.white,
                          onPressed: () {
                            _launchURL();
                          },
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const _url = 'https://flutter.dev';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

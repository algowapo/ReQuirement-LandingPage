import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:landing_page/utils/widgets/custom_icon_button.dart';
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
              fontSize: screenSize.height * .025,
              fontWeight: FontWeight.w500,
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
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(0, 40),
                    blurRadius: 80),
              ],
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
                          hintText: 'Email',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      child: CustomIconButton(
                        icon: Icons.arrow_back,
                        text: 'Empieza ya',
                        function: _launchURL,
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

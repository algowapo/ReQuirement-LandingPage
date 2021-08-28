import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:landing_page/app/modules/home/controllers/home_controller.dart';
import 'package:landing_page/utils/widgets/bottom_badge.dart';
import 'package:landing_page/utils/widgets/custom_icon_button.dart';
import 'package:landing_page/utils/widgets/home_image.dart';
import 'package:landing_page/utils/widgets/home_subtitle.dart';
import 'package:landing_page/utils/widgets/home_text.dart';

class MediumView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: screenSize.width),
      child: ListView(children: [
        Container(
          padding: EdgeInsets.only(left: screenSize.width / 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: screenSize.height / 4,
              ),
              AutoSizeText(
                'ReQuirement',
                style: GoogleFonts.montserrat(
                  color: Colors.black87,
                  fontSize: screenSize.height / 13,
                  fontWeight: FontWeight.bold,
                ),
                minFontSize: 60,
                stepGranularity: 1,
                maxLines: 1,
              ),
            ],
          ),
        ),
        Container(
          constraints: BoxConstraints(minHeight: screenSize.height / 2.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: screenSize.width / 10),
                width: screenSize.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: HomeSubtitle(),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            icon: Icons.arrow_back,
                            text: 'Empieza ya',
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height / 14,
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: screenSize.width / 10),
                width: screenSize.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/images/banner1.svg',
                      width: screenSize.width / 3,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width / 15,
                  vertical: screenSize.width / 10),
              width: screenSize.width,
              child: Visibility(
                visible: screenSize.height > 700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomBadge(
                      mainText: 'Mejora tus requerimientos',
                      secondaryText:
                          'Mejora tus requerimentos utilizando esta nueva herramienta que te permitirá utilizar',
                      iconRoute: 'assets/images/note.png',
                      iconWidth: screenSize.width / 15,
                      containerWidth: screenSize.width / 5,
                      lineHeight: screenSize.height / 550,
                    ),
                    BottomBadge(
                      mainText: 'Mejora tus requerimientos',
                      secondaryText:
                          'Mejora tus requerimentos utilizando esta nueva herramienta que te permitirá utilizar',
                      iconRoute: 'assets/images/list.png',
                      iconWidth: screenSize.width / 15,
                      containerWidth: screenSize.width / 5,
                      lineHeight: screenSize.height / 550,
                    ),
                    BottomBadge(
                      mainText: 'Mejora tus requerimientos',
                      secondaryText:
                          'Mejora tus requerimentos utilizando esta nueva herramienta que te permitirá utilizar',
                      iconRoute: 'assets/images/time-management.png',
                      iconWidth: screenSize.width / 15,
                      containerWidth: screenSize.width / 5,
                      lineHeight: screenSize.height / 550,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: screenSize.width * .05),
              width: screenSize.width * .45,
              child: HomeText(
                lineHeight: screenSize.height * .002,
              ),
            ),
            SizedBox(
              width: screenSize.width * .1,
            ),
            Container(
              padding: EdgeInsets.only(
                  right: screenSize.width * .05, top: screenSize.height * .01),
              width: screenSize.width * .45,
              child: HomeImage(),
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
      ]),
    );
  }
}

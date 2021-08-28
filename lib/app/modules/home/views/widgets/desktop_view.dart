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

class DesktopView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: screenSize.width),
      child: ListView(children: [
        Container(
          constraints: BoxConstraints(minHeight: screenSize.height / 1.6),
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
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        'ReQuirement',
                        style: GoogleFonts.montserrat(
                          color: Colors.black87,
                          fontSize: screenSize.height / 10,
                          fontWeight: FontWeight.bold,
                        ),
                        minFontSize: 60,
                        stepGranularity: 1,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    SvgPicture.asset(
                      'assets/images/banner1.svg',
                      width: screenSize.width / 3,
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
                  horizontal: screenSize.width / 10,
                  vertical: screenSize.width / 10),
              width: screenSize.width,
              child: Visibility(
                visible: screenSize.height > 700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBadge(
                      mainText: 'Mejora tus requerimientos',
                      secondaryText:
                          'Mejora tus requerimentos utilizando esta nueva herramienta que te permitirá utilizar',
                      iconRoute: 'assets/images/note.png',
                    ),
                    BottomBadge(
                      mainText: 'Mejora tus requerimientos',
                      secondaryText:
                          'Mejora tus requerimentos utilizando esta nueva herramienta que te permitirá utilizar',
                      iconRoute: 'assets/images/list.png',
                    ),
                    BottomBadge(
                      mainText: 'Mejora tus requerimientos',
                      secondaryText:
                          'Mejora tus requerimentos utilizando esta nueva herramienta que te permitirá utilizar',
                      iconRoute: 'assets/images/time-management.png',
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
              padding: EdgeInsets.only(left: screenSize.width / 10),
              width: screenSize.width / 2.5,
              child: HomeText(),
            ),
            SizedBox(
              width: screenSize.width / 5,
            ),
            Container(
              padding: EdgeInsets.only(right: screenSize.width / 10),
              width: screenSize.width / 2.5,
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

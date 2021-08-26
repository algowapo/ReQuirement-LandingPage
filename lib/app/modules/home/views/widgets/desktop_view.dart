import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/app/modules/home/controllers/home_controller.dart';
import 'package:landing_page/utils/helpers/style.dart';
import 'package:landing_page/utils/widgets/bottom_text_widget.dart';
import 'package:landing_page/utils/widgets/custom_button.dart';

class DesktopView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: screenSize.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 100),
            width: screenSize.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    bottom: 50,
                    top: 10,
                  ),
                  child: Text(
                    "ReQuirement",
                    style: GoogleFonts.montserrat(
                      color: Colors.black87,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Generar tus "),
                      TextSpan(
                        text: "requerimientos ",
                        style: GoogleFonts.montserrat(
                          color: active,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "nunca fue tan "),
                      TextSpan(
                        text: "fácil ",
                        style: GoogleFonts.montserrat(
                          color: active,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "y "),
                      TextSpan(
                        text: "sencillo.",
                        style: GoogleFonts.montserrat(
                          color: active,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.normal,
                      fontSize: 38,
                    ),
                  ),
                ),
                Visibility(
                  child: Text(
                    "",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      letterSpacing: 1.1,
                      height: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              active,
                            ),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 30,
                              ),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                            ),
                          ),
                          label: Text(
                            "Empieza ya",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          icon: Icon(
                            Icons.arrow_back,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 14,
                ),
                Visibility(
                  visible: screenSize.height > 700,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/note.png",
                              width: screenSize.width / 20,
                            ),
                            Container(
                              width: screenSize.width / 8,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "Mejora tus requerimentos",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: screenSize.width / 8,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "Mejora tus requerimentos utilizando esta nueva herramienta que te permitirá utilizar",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/time-management.png",
                              width: screenSize.width / 20,
                            ),
                            Container(
                              width: screenSize.width / 8,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "Mejora tus requerimentos",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: screenSize.width / 8,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "Mejora tus requerimentos utilizando esta nueva herramienta que te permitirá utilizar",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/list.png",
                              width: screenSize.width / 20,
                            ),
                            Container(
                              width: screenSize.width / 8,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "Mejora tus requerimentos",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: screenSize.width / 8,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "Mejora tus requerimentos utilizando esta nueva herramienta que te permitirá utilizar",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            width: screenSize.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/banner1.svg",
                  width: screenSize.width / 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

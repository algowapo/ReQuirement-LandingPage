import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/app/modules/feedback/controllers/feedback_controller.dart';
import 'package:landing_page/utils/helpers/style.dart';
import 'package:landing_page/utils/widgets/custom_icon_button.dart';
import 'package:landing_page/utils/widgets/feedback/custom_text_field.dart';
import 'package:landing_page/utils/widgets/feedback/main_text.dart';
import 'package:landing_page/utils/widgets/feedback/main_title.dart';
import 'package:landing_page/utils/widgets/feedback/subtitle.dart';

class DesktopView extends GetView<FeedbackController> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: screenSize.width),
      child: ListView(
        children: [
          SizedBox(height: screenSize.height * .1),
          Container(
            constraints: BoxConstraints(minHeight: screenSize.height * .4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .1),
                  width: screenSize.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/images/banner2.svg',
                        width: screenSize.height * .5,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: screenSize.width * .1),
                  width: screenSize.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenSize.height * .05),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: MainTitle(
                          fontSize: screenSize.height * .05,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: screenSize.width * .3,
                        child: MainText(
                          fontSize: screenSize.height * .025,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenSize.height * .1),
          Container(
            width: screenSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: screenSize.width * .1),
                  alignment: Alignment.centerLeft,
                  child: SubTitle(
                    fontSize: screenSize.height * .035,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .05,
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .32),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Nombre',
                        hint: 'Marco',
                        screenSize: screenSize,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .32),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Apellido',
                        hint: 'Herrera',
                        screenSize: screenSize,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .32),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Edad',
                        hint: '18',
                        screenSize: screenSize,
                        width: screenSize.height * .05,
                      ),
                      SizedBox(
                        width: screenSize.width * .01,
                      ),
                      CustomTextField(
                        name: 'Género',
                        hint: 'Masculino',
                        screenSize: screenSize,
                        width: screenSize.width * .1,
                      ),
                      SizedBox(
                        width: screenSize.width * .01,
                      ),
                      CustomTextField(
                        name: 'Distrito',
                        hint: 'Santiago de Surco',
                        screenSize: screenSize,
                        width: screenSize.width * .1,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .32),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Correo',
                        hint: 'marco@gmail.com',
                        screenSize: screenSize,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .32),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Feedback',
                        hint: 'Escribe aquí tu feedback',
                        screenSize: screenSize,
                        height: screenSize.height * .2,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .32),
                  child: Row(
                    children: [
                      CustomIconButton(
                        text: 'Enviar',
                        icon: Icons.arrow_back,
                        function: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenSize.height * .1),
        ],
      ),
    );
  }
}

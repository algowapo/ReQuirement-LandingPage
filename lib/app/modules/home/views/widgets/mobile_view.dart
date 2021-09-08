import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:landing_page/app/modules/home/controllers/home_controller.dart';
import 'package:landing_page/app/modules/home/models/badge_model.dart';
import 'package:landing_page/utils/widgets/badges/badge.dart';
import 'package:landing_page/utils/widgets/bottom/bottom_image_decoration.dart';
import 'package:landing_page/utils/widgets/custom_icon_button.dart';
import 'package:landing_page/utils/widgets/main/main_subtitle.dart';
import 'package:landing_page/utils/widgets/bottom/bottom_text.dart';
import 'package:landing_page/utils/widgets/main/main_title.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double badgeContainerSize = screenSize.width * .5;
    double badgeIconSize = screenSize.width * .1;
    double badgeLineHeight = screenSize.width * .003;

    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: screenSize.height * .05),
          alignment: Alignment.center,
          child: MainTitle(
            fontSize: screenSize.width * .0009,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 450),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MainSubtitle(
                fontSize: screenSize.height * .03,
                isCentered: true,
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width / 10),
          width: screenSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              SvgPicture.asset(
                'assets/images/banner1.svg',
                width: screenSize.width * .6,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                icon: Icons.arrow_back,
                text: 'Empieza ya',
                function: () {
                  _launchURL();
                },
              ),
            ],
          ),
        ),
        Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: badgesList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Center(
                    child: Badge(
                      mainText: badgesList[index].mainText,
                      secondaryText: badgesList[index].secondaryText,
                      iconRoute: badgesList[index].iconRoute,
                      iconWidth: badgeIconSize,
                      containerWidth: badgeContainerSize,
                      lineHeight: badgeLineHeight,
                      isCentered: true,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: 100.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * .2),
          width: screenSize.width,
          child: BottomText(
            lineHeight: screenSize.height * .002,
            isCentered: true,
            containerWidth: screenSize.width,
          ),
        ),
        SizedBox(
          height: screenSize.height * .05,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * .2),
          child: Container(
            child: Image.asset(
              'assets/images/business-man.jpg',
              width: screenSize.width * .2,
              fit: BoxFit.cover,
            ),
            decoration: bottomImageDecoration,
          ),
        ),
        SizedBox(
          height: screenSize.height * .05,
        ),
      ],
    );
  }
}

const _url = 'https://requirementwebapp.web.app/#/signin';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
